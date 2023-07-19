// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundToken} from "../src/FundToken.sol";

contract DeployFundToken is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() external returns (FundToken) {
        vm.startBroadcast();
        FundToken fundToken = new FundToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return fundToken;
    }
}

