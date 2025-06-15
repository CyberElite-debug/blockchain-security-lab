// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Safe {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function kill() public {
        require(msg.sender == owner); // ✅ safe
        selfdestruct(payable(owner));
    }
}
