// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

import "./ProxyStorage.sol";

contract NotLostStorage is ProxyStorage {
    address public myAddress;
    uint public myUint;

    function setAddress(address _address) public {
        myAddress = _address;
    }

    function setMyUint(uint _uint) public {
        myUint = _uint;
    }
} 
