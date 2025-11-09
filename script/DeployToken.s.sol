// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {AYEMToken} from "../src/AYEMToken.sol";
import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

contract DeployTokenScript is Script {
    function run() public {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        address owner = vm.envAddress("TOKEN_OWNER");
        vm.startBroadcast(pk);

        AYEMToken token = new AYEMToken();

        console.log(token.name());
        console.log(token.symbol());
        console.log(token.totalSupply());
        console.log(token.decimals());
        console.log(token.balanceOf(owner));

        vm.stopBroadcast();
    }
}
