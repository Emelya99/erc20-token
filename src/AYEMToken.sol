// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AYEMToken is ERC20 {
    constructor() ERC20("AYEM", "AYEM") {
        _mint(msg.sender, 64000000);
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }
}
