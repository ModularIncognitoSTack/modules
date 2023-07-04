// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { AccountData } from "../libraries/RegistryStructs.sol";

interface IMISTRegistry {
    function manageAccount(AccountData calldata data, bytes calldata signature) external;
    function getRoot(address account) external view returns (uint256);
    function getQuorum(address account) external view returns (uint256);
    function getNonce(address account) external view returns (uint256);
    function root() external view returns (uint256);
    function rootOf(uint256 treeNumber) external view returns (uint256);
    function currentRegistryTreeNumber() external view returns (uint256);
    function isValidRoot(uint256 merkleRoot) external view returns (bool);
    function isValidRoot(uint256 treeNumber, uint256 merkleRoot) external view returns (bool);
    function verify(
        address account,
        uint256 message,
        uint256 role,
        bytes calldata proof
    ) external view returns (bool);
}