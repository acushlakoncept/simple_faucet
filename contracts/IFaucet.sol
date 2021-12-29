// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

// they cannot inherit from other smart contracts
// can only inherit from other interfaces

// cannot declare a constructor
// cannot declare state variables
// all declared functions has to be external

interface IFaucet {
    function addFunds() external payable;
    function withdraw(uint withdrawAmount) external;
}