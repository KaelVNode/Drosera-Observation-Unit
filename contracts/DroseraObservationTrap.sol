// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./ITrap.sol";

contract DroseraObservationTrap is ITrap {
    address[] public observations;

    event Observed(address indexed observer);

    function observe() external {
        observations.push(msg.sender);
        emit Observed(msg.sender);
    }

    function getObservers() external view returns (address[] memory) {
        return observations;
    }

    struct CollectOutput {
        uint256 observerCount;
    }

    function collect() external view override returns (bytes memory) {
        return abi.encode(CollectOutput({
            observerCount: observations.length
        }));
    }

    function shouldRespond(bytes[] calldata data)
        external
        pure
        override
        returns (bool, bytes memory)
    {
        CollectOutput memory latest = abi.decode(data[0], (CollectOutput));
        if (latest.observerCount >= 5) {
            return (true, bytes(""));
        }
        return (false, bytes(""));
    }
}
