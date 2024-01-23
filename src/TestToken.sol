// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract TestToken is ERC20, ERC20Burnable, ERC20Permit {
    constructor() ERC20("Test Token", "USDC") ERC20Permit("Test Token") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}
