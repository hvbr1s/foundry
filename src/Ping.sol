// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Ping {
    function ping() public pure returns (string memory) {
        return "pong";
    }
}