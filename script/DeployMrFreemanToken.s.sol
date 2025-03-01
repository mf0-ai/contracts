// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MrFreemanToken.sol";

contract DeployMrFreemanToken is Script {
    function run() external {
        uint256 initialSupply = 100000000 * 10 ** 18;
        string memory name = "Digital Mr. Freeman";
        string memory symbol = "MF0";

        vm.startBroadcast();

        // Deploy the MrFreemanToken contract
        MrFreemanToken token = new MrFreemanToken(name, symbol, initialSupply);

        vm.stopBroadcast();

        // Log the address of the deployed contract
        console.log("MrFreemanToken deployed at:", address(token));
    }
} 
