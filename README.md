# TD10-Lending-Borrowing-on-AAVE

## AAVE Basics
* DAI => [0xFf795577d9AC8bD7D90Ee22b6C1703490b6512FD](https://kovan.etherscan.io/token/0xFf795577d9AC8bD7D90Ee22b6C1703490b6512FD)
* USDC => [0xe22da380ee6B445bb8273C81944ADEB6E8450422](https://kovan.etherscan.io/token/0xe22da380ee6B445bb8273C81944ADEB6E8450422)
* AAVE (LendingPool) => [0xE0fBa4Fc209b4948668006B2bE61711b7f465bAe](https://kovan.etherscan.io/address/0xE0fBa4Fc209b4948668006B2bE61711b7f465bAe)
#### Deposit DAI in AAVE 
* go Uniswap for exchange ETH/DAI
* go to AAVE Kovan => deposer => Dai (approuver et deposer)

#### Borrow assets from AAVE
* go to AAVE Kovan => Emprunter => USDC (taux variable) (emprunter)

#### Repay assets to AAVE
* go to AAVE Kovan => Dashboard => repayer USDC (il faut avoir les USDC + frais)

#### Withdraw assets from AAVE
* go to AAVE Kovan => Dashboard => retirer Dai

## AAVE Integration
* Go to remix to use my contract
```
Compiler => 0.6.12+
Language => Solidity
EVM Version => compiler default
Environment => injected Web3 (Kovan)
```

#### depositSomeTokens()
* it's work
#### borrowSomeTokens()
* it's work
#### repaySomeTokens()
* it's work
#### withdrawSomeTokens()
* it's work

## FlashLoan
#### doAFlashLoan()
* not try
#### repayFlashLoan()
* not try



## Documentation
* [Remix](https://remix.ethereum.org)
* [AAVE Docs](https://docs.aave.com/developers/deployed-contracts/deployed-contracts)
* [AAVE ILendingPool](https://github.com/aave/protocol-v2/blob/ice/mainnet-deployment-03-12-2020/contracts/interfaces/ILendingPool.sol)
* [AAVE plateform](https://staging.aave.com/#/markets)
* [OpenZepplin IERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/token/ERC20/IERC20.sol)
