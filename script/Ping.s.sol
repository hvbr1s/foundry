// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Ping} from "../src/Ping.sol";

contract DeployPingPong is Script {
    function setUp() public {}

    function run() external returns (Ping) {
        vm.startBroadcast();
        Ping pingPong = new Ping();
        vm.stopBroadcast();
        return pingPong;
    }
}
