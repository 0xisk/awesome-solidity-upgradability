// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract LostStorage {
    address public myAddress;
    uint256 public myUint;

    function setAddress(address _address) public {
        myAddress = _address;
    }

    function setMyUint(uint256 _uint) public {
        myUint = _uint;
    }
}
