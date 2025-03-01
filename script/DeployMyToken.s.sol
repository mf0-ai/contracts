// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract DeployMyToken is Script {
    function run() external {
        uint256 initialSupply = 1000 * 10 ** 18; // Adjust the initial supply as needed

        vm.startBroadcast();

        // Deploy the MyToken contract
        MyToken token = new MyToken("MF0", "MF0", initialSupply);

        vm.stopBroadcast();

        // Log the address of the deployed contract
        console.log("MyToken deployed at:", address(token));
    }
} 