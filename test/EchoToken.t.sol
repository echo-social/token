// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {EchoToken} from "../src/EchoToken.sol";

contract EchoTokenTest is Test {
    EchoToken public token;

    function setUp() public {
        token = new EchoToken();
    }

    function test_GetBalance() public view {
        uint256 balance = token.balanceOf(address(this));
        assertEq(balance, 1000000000000000000000000);
    }
}
