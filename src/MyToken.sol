// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    // Override the mint function to disable it
    function _mint(address account, uint256 amount) internal override {
        revert("Minting is disabled");
    }

    // Override the burn function to disable it
    function _burn(address account, uint256 amount) internal override {
        revert("Burning is disabled");
    }
} 