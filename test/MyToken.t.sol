// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken token;
    address user1 = address(0x1);
    address user2 = address(0x2);

    function setUp() public {
        token = new MyToken("MyToken", "MTK", 1000 * 10 ** 18);
    }

    function testTransfer() public {
        // Transfer 100 tokens from the deployer to user1
        token.transfer(user1, 100 * 10 ** 18);
        assertEq(token.balanceOf(user1), 100 * 10 ** 18);

        // Transfer 50 tokens from user1 to user2
        vm.prank(user1);
        token.transfer(user2, 50 * 10 ** 18);
        assertEq(token.balanceOf(user2), 50 * 10 ** 18);
        assertEq(token.balanceOf(user1), 50 * 10 ** 18);
    }
} 