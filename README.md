

ERC-20 Token with Foundry Solidity token contract (mint/burn) + 3 Foundry tests verifying supply invariants, deployed locally on Anvil.

## forge set up 

```bash
forge install OpenZeppelin/openzeppelin-contracts
nano remappings.txt
@openzeppelin/contracts/=lib/openzeppelin-contracts/contracts/
```

## compiler and run test 
```bash
forge clean
forge build
forge test
forge test 
    --match-test <test function name>
    -vvvv
```
testing notes
- foudary only treats function names with the prefix test as tests

## anvil 

https://www.getfoundry.sh/anvil

```text 
Anvil is a fast local Ethereum node for development and testing. It runs entirely in-memory and supports forking from any EVM-compatible chain.
```

## Common workflows

start local node
```bash
anvil
```
or for custom accounts 
```bash 
anvil --accounts 20
```

fork mainnet
```bash 
anvil --fork-url https://ethereum.reth.rs/rpc
```

fork a block 
```bash 
anvil --fork-url https://ethereum.reth.rs/rpc --fork-block-number 18000000
```

Auto impersonate
```bash 
anvil --auto-impersonate
```

Default accounts
Anvil generates 10 development accounts with 10,000 ETH each. The default mnemonic is:
```bash
test test test test test test test test test test test junk
```
You can customize accounts with --accounts, --balance, and --mnemonic.

Default Anvil accounts are publicly known. Use a custom mnemonic when forking mainnet or interacting with public RPC providers.







# Doploying on anvil results


```bash 
anvil 
```
```bash 
echo cast abi-encode "constructor(uint256)" 1000000 > constructor_args.txt
```

```bash 
forge build
```

```bash 
forge create src/modelToken.sol:modelToken --rpc-url http://127.0.0.1:8545 --private-key <anvil genrated key> --constructor-args-path constructor_args.txt --broadcast
```

```text 
eth_chainId
eth_getTransactionCount
eth_estimateGas
eth_feeHistory
eth_sendRawTransaction

    Transaction: 0x77785dd619c62a2fbb54ff4e4a1c6f19e3f8f3b344af412669b786848cf2051b
    Contract created: 0x5FbDB2315678afecb367f032d93F642f64180aa3
    Gas used: 1199620

    Block Number: 1
    Block Hash: 0x920fe56ca981fab8655685067cac17ce069b43fe4277dc90d4d570833da16b08
    Block Time: "Mon, 17 Aug 2026 11:43:40 +0000"

eth_getTransactionReceipt
eth_getTransactionReceipt


```text
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0x77785dd619c62a2fbb54ff4e4a1c6f19e3f8f3b344af412669b786848cf2051b
```

eth_chainId
eth_getTransactionCount
eth_estimateGas
eth_feeHistory
eth_sendRawTransaction

    Transaction: 0x6730f0b0765e3e98f40c58d719a560329149c3bcd1ff44b9e55b6d66f0bff46d
    Contract created: 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512
    Gas used: 1199620

    Block Number: 2
    Block Hash: 0xf0ec8b95ef6058e36b97cc11de7185cdda643de2259b52bf4df9eae9c3983046
    Block Time: "Mon, 17 Aug 2026 11:43:57 +0000"

eth_getTransactionReceipt
eth_getTransactionReceipt

```
```text
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512
Transaction hash: 0x6730f0b0765e3e98f40c58d719a560329149c3bcd1ff44b9e55b6d66f0bff46d
```


```bash 
  forge create --help
  forge inspect modelToken abi
```