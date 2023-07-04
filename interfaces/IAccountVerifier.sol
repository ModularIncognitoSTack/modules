// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IAccountVerifier {
    function verifyProof(
        bytes calldata proof,
        uint root,
        uint message,
        uint role
    ) external view returns (bool r);

    function verifyProof(
        uint[2] memory a,
        uint[2][2] memory b,
        uint[2] memory c,
        uint[3] memory input
    ) external view returns (bool r);
}