// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

/// @title FeeVault
/// @notice The FeeVault contract contains the basic logic for the various different vault contracts
///         used to hold fee revenue generated by the L2 system.
abstract contract FeeVault {
    /// @notice Total amount of wei processed by the contract.
    uint256 public totalProcessed;

    function setTotalProcessed(uint256 _correctTotalProcessed) external {
        totalProcessed = _correctTotalProcessed;
    }

    /// @notice Allow the contract to receive ETH.
    receive() external payable {}
}