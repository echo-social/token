// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";

contract EchoToken is ERC20Burnable {
    constructor() ERC20("Echo", "ECHO") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
