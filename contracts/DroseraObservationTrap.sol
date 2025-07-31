// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./ITrap.sol";

contract DroseraObservationTrap is ITrap {
    address[] public observations;

    event Observed(address indexed observer);

    constructor() {}

    // User "menyentuh" kontrak untuk terekam
    function observe() external {
        observations.push(msg.sender);
        emit Observed(msg.sender);
    }

    function getObservers() external view returns (address[] memory) {
        return observations;
    }

    // Implementasi ITrap - collect data pengamatan dalam bentuk bytes
    struct CollectOutput {
        uint256 observerCount;
    }

    function collect() external view override returns (bytes memory) {
        return abi.encode(CollectOutput({
            observerCount: observations.length
        }));
    }

    // Menentukan apakah harus bereaksi berdasarkan data yang dikumpulkan
    function shouldRespond(bytes[] calldata data)
        external
        pure
        override
        returns (bool, bytes memory)
    {
        CollectOutput memory latest = abi.decode(data[0], (CollectOutput));

        // Contoh logika trigger: jika ada >=5 observer
        if (latest.observerCount >= 5) {
            return (true, bytes(""));
        }
        return (false, bytes(""));
    }
}
