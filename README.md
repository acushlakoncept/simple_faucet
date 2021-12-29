# First BlockChain application

Playing with Etherium Smart Contracts

### Some Commands
- Migrate Contracts
```
truffle migrate
truffle migrate --reset  //force recompilation
```

- Compile Contract
```
truffle compile
```

- Start Ganache
Ganache is a private simulation of a blockchain to test and simulate your smart contracts running on blockchain, this time it's running on your local machine. Visit [Ganache Repo](https://github.com/trufflesuite/ganache/releases) for [quick overview](https://trufflesuite.com/docs/ganache/quickstart.html#1-install-ganache) and installation

#### start Ganache server
```
ganache-cli
```

> web3.js is a collection of libs that allow you to interact with a local or remote ethereum node.


### Some truffle console commands for test
> const instance = await Faucet.deployed()
> instance.addFunds({value: 2000000000000000000, from: accounts[0]})
> instance.addFunds({value: 2000000000000000000, from: accounts[1]})

> instance.withdraw('500000000000000000', {from: accounts[1]})

> instance.getFunderAtIndex(0)
> instance.getAllFunders()