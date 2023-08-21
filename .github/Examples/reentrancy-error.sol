pragma solidity ^0.8.21;

contract A {
      
    mapping(address => uint) private shares;
    function b() external {
        uint amount = shares[msg.sender];
        msg.sender.transfer(amount);
        shares[msg.sender] = 0;
    }
            
}