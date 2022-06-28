//SPDX-License-Identifier: MIT

pragma solidity 0.8.1;

contract EternalStorage {
    mapping(bytes32 => uint256) UIntStorage;
    mapping(bytes32 => bool) BooleanStorage;

    function getUIntValue(bytes32 record) public view returns (uint256) {
        return UIntStorage[record];
    }

    function setUIntValue(bytes32 record, uint256 value) public {
        UIntStorage[record] = value;
    }

    function getBooleanValue(bytes32 record) public view returns (bool) {
        return BooleanStorage[record];
    }

    function setBooleanValue(bytes32 record, bool value) public {
        BooleanStorage[record] = value;
    }
}
