// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


struct AccountData {
    address account;
    uint256 root;
    uint256 quorum;
    uint256 registry;
    bytes merkleProof;
    uint256 nonce;
}