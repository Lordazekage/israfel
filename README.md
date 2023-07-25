# Concept Contract on Humanode-Testnet-5

I tried to create a concept use case that can assist you with your tx (transaction) operations on Humanode-Testnet-5. You can test the network and add the Humanode-Testnet-5 network to your Metamask wallet. The eHMND token is used natively.

Demo 
https://humanode-test-j3trofjir-neuweltgeld.vercel.app/

Here is the content of the contract:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Donate {
    address payable public owner;
    address payable public charityOrganization = payable(0x62Bc5A67eFc9778a85c86aE5CaF218f6cA76b519);
    
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
```
