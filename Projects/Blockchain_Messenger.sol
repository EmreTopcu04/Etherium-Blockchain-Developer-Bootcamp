// SPDX-License-Identifier: MIT
pragma solidity 0.8;

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

