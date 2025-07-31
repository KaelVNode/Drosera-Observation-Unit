// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./ITrap.sol";

contract Trap is ITrap {
    function collect() external pure override returns (bytes memory) {
        return abi.encode("example");
    }

    function shouldRespond(bytes[] calldata data) external pure override returns (bool, bytes memory) {
        return (data.length > 0, abi.encode("response"));
    }
}
