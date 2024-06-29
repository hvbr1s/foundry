// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/Ping.sol";

contract PingPongTest is Test {
    Ping public pingPong;

    function setUp() public {
        pingPong = new Ping();
    }

    function testPing() public view {
        string memory result = pingPong.ping();
        assertEq(result, "pong");
    }
}