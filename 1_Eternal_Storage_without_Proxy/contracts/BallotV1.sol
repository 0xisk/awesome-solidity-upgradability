//SPDX-License-Identifier: MIT

pragma solidity 0.8.1;

import "./BallotLibV1.sol";

contract BallotV1 {
    using BallotLibV1 for address;

    address eternalStorage;

    constructor(address _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function getNumberOfVotes() public view returns (uint256) {
        return eternalStorage.getNumberOfVotes();
    }

    function vote() public {
        eternalStorage.setVoteCount(eternalStorage.getNumberOfVotes() + 1);
    }
}
