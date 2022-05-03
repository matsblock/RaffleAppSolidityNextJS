//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

error Raffle__SendMoreToEnterRaffle();


contract Raffle {

    uint256 public immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable {

        if (msg.value < i_entranceFee) {
            revert Raffle__SendMoreToEnterRaffle();
        }
    }
}