// SPDX-License-Identifier: MIT
pragma solidity 0.8;

/*

    Our smart contract serves as a virtual wallet; it has a balanceReceived variable that keeps track of the money received 
    from each transaction. Our deposit function enables us to keep track of our balance.Variable that we have received The 
    function ContractBalance provides us with the contract balance that we have withdrawn. 
    All of the functions that remove all of the money from the account were something we wanted to specialize on, 
    giving our users the choice to remove their money to other accounts. 
    We finally ensured that they could withdraw their money, but just a certain amount—not the total amount in their wallet.

*/

contract virtualWallet{

    uint public balanceReceived;


    function deposit() public  payable {

            balanceReceived += msg.value;

    }

    function getContractBalance() public view returns (uint){

        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);

        to.transfer(getContractBalance());

        balanceReceived = 0;
    }


    function withdrawToAddress(address payable to) public{

        to.transfer(getContractBalance());

        balanceReceived = 0;
    
    }

    function withdraw(uint amount) public {
        address payable to = payable(msg.sender);

        uint ethAsAmount = amount*(10**18);

        to.transfer(ethAsAmount);

        balanceReceived -= ethAsAmount;
    }


    function withdrawToAddressWithAmonunt(address payable to , uint amount) public{

        uint ethAsAmount = amount*(10**18);
        
        to.transfer(ethAsAmount);

        balanceReceived -= ethAsAmount;
    
    }


}

