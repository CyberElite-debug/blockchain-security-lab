// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vulnerable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function kill() public {
        require(tx.origin == owner); // ❌ insecure
        selfdestruct(payable(owner)); // 🔥 dangerous
    }
}
