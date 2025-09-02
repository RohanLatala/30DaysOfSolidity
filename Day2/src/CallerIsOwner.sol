//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Ownable {

    address public Owner;

    constructor(){

        Owner = msg.sender;
    }

    modifier OnlyOwner{
        require(Owner == msg.sender, "Invalid Onwer");
        _;
    
    }

    function SetOwner (address _NewOwner) external OnlyOwner{

        require(_NewOwner != address(0), "Non-existential owner");

        Owner = _NewOwner;
    }

}