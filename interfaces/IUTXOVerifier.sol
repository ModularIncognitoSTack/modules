// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IUTXOVerifier {
    function verifyProof(
        bytes calldata proof,
        uint root,
        uint registryRoot,
        uint extDataHash,
        uint nullifyingKey,
        uint quorum,
        uint[] calldata nullifiers,
        uint[] calldata commitments
    ) external view returns (bool r);
}