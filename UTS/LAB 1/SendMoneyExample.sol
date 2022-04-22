// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract SendMoneyExample {
uint public balanceReceived;

function receiveMoney() public payable {
balanceReceived += msg.value;
}

function getBalance() public view returns(uint) {
return address(this).balance;
}

//withdraw function
function withdrawMoney() public {
address payable to = payable(msg.sender);
to.transfer(getBalance());
}

//Withdraw To Specific Account
function withdrawMoneyTo(address payable _to) public {
_to.transfer(getBalance());
}
}}
