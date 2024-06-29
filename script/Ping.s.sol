// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Ping.sol";

contract DeployPingPong is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new Ping();
        vm.stopBroadcast();
    }
}