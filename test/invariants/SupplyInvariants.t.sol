pragma solidity ^0.8.24;


/*

initialSupply => correct

mint -> supply increases

burn -> supply decreases

non-owner mint -> reverts
 */ 

import {Test} from "forge-std/Test.sol";
import {modelToken} from "../../src/modelToken.sol";


contract modelTokenTest is Test {
    modelToken token;

    // inital mint
    function setUp() public {
        token = new modelToken(1_000);
    }
    
    // check the supply
    function testInitialSupply() public view {
        assertEq(token.totalSupply(), 1_000);
    }
    
}