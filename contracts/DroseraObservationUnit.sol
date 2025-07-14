// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DroseraObservationUnit {
    address public deployer;
    address[] public observations;

    event Observed(address indexed observer);

    constructor() {
        deployer = msg.sender;
    }

    function observe() external {
        observations.push(msg.sender);
        emit Observed(msg.sender);
    }

    function getObservers() external view returns (address[] memory) {
        return observations;
    }
}
