//SPDX-License-Identifier: MIT

pragma solidity 0.8.1;

import "./EternalStorage.sol";

library BallotLibV1 {
    function getNumberOfVotes(address _eternalStorage)
        public
        view
        returns (uint256)
    {
        return EternalStorage(_eternalStorage).getUIntValue(keccak256("votes"));
    }

    function setVoteCount(address _eternalStorage, uint256 _voteCount) public {
        EternalStorage(_eternalStorage).setUIntValue(
            keccak256("votes"),
            _voteCount
        );
    }
}
