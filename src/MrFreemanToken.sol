// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MrFreemanToken is ERC20 {

    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        super._mint(msg.sender, initialSupply);
    }

    function mint(address, uint256) public pure {
        revert("Minting is disabled");
    }
    
    function burn(address, uint256) public pure {
        revert("Burning is disabled");
    }
} 
