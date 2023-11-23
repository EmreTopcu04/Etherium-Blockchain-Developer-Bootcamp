// SPDX-License-Identifier: MIT
pragma solidity 0.8;

/*
In this project, you are going to implement a simple messenger functionality in a Smart Contract.
Through the constructor make sure you write the address that deployed the contract to a variable
Create a message-variable of the type string, that only the deployer-address can update
Create a counter, to see how many times the variable was updated.
*/

contract Blockchain_Messenger{
    
    int public counter;

    address public owner;

    string public message;

    constructor(){
        owner = msg.sender;
    }

    function updateTheMessage(string memory _message) public {
            if(msg.sender == owner){
                message = _message;
                counter++;
            }
    }
}

