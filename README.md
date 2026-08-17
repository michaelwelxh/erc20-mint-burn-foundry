

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