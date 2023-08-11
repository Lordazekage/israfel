// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Donate {
    address payable public owner;
    address payable public charityOrganization = payable(0xE816D5b3290698f5728289C7824f78B3393fCd6b);
    
    constructor() {
        owner = payable(msg.sender);
    }
    
    function buyMeACoffee() public payable {
        require(msg.value == 0.1 ether, "You should send exactly 0.1 eHMND.");
        owner.transfer(msg.value);
    }
    
    function plantATree() public payable {
        require(msg.value > 0, "You should send more than 0 eHMND.");
        charityOrganization.transfer(msg.value);
    }
}