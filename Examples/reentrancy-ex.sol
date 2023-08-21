pragma solidity ^0.8.21;

contract A {
        
    mapping(address => uint) private shares;
    function b() external {
        uint amount = shares[msg.sender];
        shares[msg.sender] = 0;
        msg.sender.transfer(amount);
        }  
}