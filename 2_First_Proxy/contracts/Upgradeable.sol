//SPDX-License-Identifier: No-Idea!

pragma solidity 0.8.1;

abstract contract Upgradeable {
    mapping(bytes4 => uint32) _size;
    address _dest;

    function initialize() public virtual;

    function replace(address target) public {
        _dest = target;
        (bool success, ) = target.delegatecall(
            abi.encodeWithSelector(bytes4(keccak256("initialize()")))
        );
        require(success, "Upgradeable: ERR_IN_REPLACING");
    }
}
