// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//import "./ownable.sol";
import {Ownable} from"@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract modelToken is Ownable, ERC20 {
    // erc20 constructor
    // public, private, external , internal , ...

    constructor(uint256 initialSupply) ERC20("Model", "MDL") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    function mint(uint256 amount) external onlyOwner {
        _mint(msg.sender, amount);
    }
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

}