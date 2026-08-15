pragma solidity ^0.8.24;

// import "./ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract modelToken is Ownable, ERC20 {
    // erc20 constructor
    // public, private, external , internal , ...

    constructor(uint256 initialSupply) ERC20("Model", "MDL");

    
    function burn() {
        _mint(msg.sender, initialSupply);
    }

    function mint() {
        _burn(msg.sender, amount);
    }

}