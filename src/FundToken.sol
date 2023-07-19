// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FundToken is ERC20 {
    constructor(uint256 _initialSupply) ERC20("FundToken", "FND") {
        _mint(msg.sender, _initialSupply);
    }
}