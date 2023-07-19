// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployFundToken} from "../script/DeployFundToken.s.sol";
import {FundToken} from "../src/FundToken.sol";

contract FundTokenTest is Test {
    FundToken fundToken;
    DeployFundToken deployFundToken;

    address BOB = makeAddr("BOB");
    address ALICE = makeAddr("ALICE");

    uint256 public constant STARTING_BALANCE = 10 ether;

    function setUp() external {
        deployFundToken = new DeployFundToken();
        fundToken = deployFundToken.run();

        vm.prank(msg.sender);
        fundToken.transfer(BOB, STARTING_BALANCE);
    }

    function testBobBalance() external view {
        assert(fundToken.balanceOf(BOB) == STARTING_BALANCE);
    }

    function testAllowanceWorks() external {
        uint256 initialAllowance = 1 ether;
        
        vm.prank(BOB);
        fundToken.approve(ALICE, initialAllowance);

        uint256 transferAmount = 0.5 ether;

        vm.prank(ALICE);
        fundToken.transferFrom(BOB, ALICE, transferAmount);

        assert(fundToken.balanceOf(ALICE) == transferAmount);
        assert(fundToken.balanceOf(BOB) == STARTING_BALANCE-transferAmount);
    }
}