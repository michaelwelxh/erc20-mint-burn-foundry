

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