// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IBalanceVerifier {
    function verify(
        uint root,
        uint registryRoot,
        address token,
        uint balance,
        uint nullifyingKey,
        uint[] memory nullifiers,
        bytes calldata proof
    ) external view returns (bool r);
}