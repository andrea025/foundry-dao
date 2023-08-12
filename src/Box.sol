// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 public s_number;

    event NumberChanged(uint256 number);

    function store(uint256 number) external onlyOwner {
        s_number = number;
        emit NumberChanged(number);
    }

    function getNumber() external view returns (uint256) {
        return s_number;
    }
}
