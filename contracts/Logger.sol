// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

abstract contract Logger {
    function emitLog() public virtual returns(bytes32);
}