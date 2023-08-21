pragma solidity ^0.8.21;

contract A {
        
    mapping(address => uint) private shares;

    function b() external {
        uint amount = shares[msg.sender];
        bool a = msg.sender.send(amount);
        if (a) { shares[msg.sender] = 0; }
    }
            
}