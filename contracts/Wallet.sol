// SPDX-License-Identifier: GPL-2.0-only
pragma solidity >=0.6.0 <0.9.0;

import "./MainVerifier.sol";


contract Wallet is TurboVerifier {
    bytes32 public hashed_secret;

    event Success();

    constructor(bytes32 hashed_secret_) public {
        hashed_secret = hashed_secret_;
    }

    function execute(
        bytes calldata proof,
        bytes calldata input
    ) public {
        bytes32 hashed_secret_ = get_hashed_secret_from_input(input);

        require(hashed_secret_ == hashed_secret, "Wrong hash provided");

        require(verify(proof, input), 'Proof verification failed');

        emit Success();
    }

    function get_hashed_secret_from_input(
        bytes calldata input
    ) public returns(bytes32 hashed_secret_) {
        return bytes32(0);
    }
}
