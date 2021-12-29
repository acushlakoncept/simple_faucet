// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

import './Owned.sol';
import './IFaucet.sol';

contract Faucet is Owned, IFaucet {

    uint public numOfFunders;

    mapping(address => bool) private funders;
    mapping(uint => address) private lutFunders;

    modifier limitWithdraw(uint withdrawAmount) {
        require(withdrawAmount <= 1000000000000000000, 'Withdraw amount must be less than 1 ETH');
        _;
    }

    receive() external payable {} 

    function addFunds() external override payable {
        
        address funder = msg.sender;
        
        if(!funders[funder]) {
            uint index = numOfFunders++;
            funders[funder] = true;
            lutFunders[index] = funder;
        }
    }

    function getFunderAtIndex(uint8 index) external view returns (address) {
        return lutFunders[index];
    }

    function getAllFunders() external view returns (address[] memory) {
        address[] memory _funders = new address[](numOfFunders);

        for (uint i = 0; i < numOfFunders; i++) {
            _funders[i] = lutFunders[i];
        }

        return _funders;
    }

    function test1() external onlyOwner {
        //some code
    }

    function withdraw(uint withdrawAmount) external override limitWithdraw(withdrawAmount) {
        payable(msg.sender).transfer(withdrawAmount);
    }

}

// const instance = await Faucet.deployed()
// instance.addFunds({value: 2000000000000000000, from: accounts[0]})
// instance.addFunds({value: 2000000000000000000, from: accounts[1]})

// instance.withdraw('500000000000000000', {from: accounts[1]})

// instance.getFunderAtIndex(0)
// instance.getAllFunders()