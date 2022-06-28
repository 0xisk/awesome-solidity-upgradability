//SPDX-License-Identifier: MIT

pragma solidity 0.8.1;

import "./EternalStorage.sol";

library BallotLibV2 {
    function getNumberOfVotes(address _eternalStorage)
        public
        view
        returns (uint256)
    {
        return EternalStorage(_eternalStorage).getUIntValue(keccak256("votes"));
    }

    function getUserHasVoted(address _eternalStorage)
        public
        view
        returns (bool)
    {
        return
            EternalStorage(_eternalStorage).getBooleanValue(
                keccak256(abi.encodePacked("voted", msg.sender))
            );
    }

    function setUserHasVoted(address _eternalStorage) public {
        EternalStorage(_eternalStorage).setBooleanValue(
            keccak256(abi.encodePacked("voted", msg.sender)),
            true
        );
    }

    function setVoteCount(address _eternalStorage, uint256 _voteCount) public {
        EternalStorage(_eternalStorage).setUIntValue(
            keccak256("votes"),
            _voteCount
        );
    }
}
