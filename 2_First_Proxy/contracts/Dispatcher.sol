//SPDX-License-Identifier: No-Idea!

pragma solidity 0.8.1;

import "./Upgradeable.sol";

contract Dispatcher is Upgradeable {
    constructor(address target) {
        replace(target);
    }

    function initialize() public pure override {
        // Should only be called by on target contracts, not on the dispatcher
        assert(false);
    }

    fallback() external {
        bytes4 sig;
        assembly {
            sig := calldataload(0)
        }
        uint256 len = _size[sig];
        address target = _dest;

        assembly {
            // return _dest.delegatecall(msg.data)
            calldatacopy(0x0, 0x0, calldatasize())
            let result := delegatecall(
                sub(gas(), 10000),
                target,
                0x0,
                calldatasize(),
                0,
                len
            )
            return(0, len) // we throw away any return data
        }
    }
}
