pragma solidity >=0.6.0 <0.8.0;

import "https://github.com/aave/protocol-v2/blob/ice/mainnet-deployment-03-12-2020/contracts/interfaces/ILendingPool.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/token/ERC20/IERC20.sol";

contract TD10{
  // 0xFf795577d9AC8bD7D90Ee22b6C1703490b6512FD
  IERC20 public DAI;
  // 0xe22da380ee6B445bb8273C81944ADEB6E8450422
  IERC20 public USDC;
  // 0xE0fBa4Fc209b4948668006B2bE61711b7f465bAe
  ILendingPool public AAVE;
/*
  constructor(IERC20 _DAI,IERC20 _USDC,IERC20 _aDAI,IERC20 _bUSDC,address _AAVE) public{
    DAI = _DAI;
    USDC = _USDC;
    aDAI = _aDAI;
    bUSDC = _bUSDC;
    AAVE = _AAVE;
  }*/
  constructor(IERC20 _DAI,IERC20 _USDC,ILendingPool _AAVE) public{
    DAI = _DAI;
    USDC = _USDC;
    AAVE = _AAVE;
    }
  // EX5 => it's work
  function depositSomeTokens() payable public{
    //deposit(asset(add),amount(unit),onbehalfOf(add),referralCode(uint))
    uint amount = 100000000000000000000;
    DAI.approve(address(AAVE),amount);
    //DAI.TransferFrom(tx.origin, address(this), amount);
    AAVE.deposit(address(DAI),amount,address(this),0);
  }

  // EX8 => it's work
	function withdrawSomeTokens() payable public{
    uint amount = 10000000000000000000;
    AAVE.withdraw(address(DAI),amount,address(this));
  }

  // EX6
	function borrowSomeTokens() public{
    //borrow(asset(add),amount(unit),interestRateMode(uint256),referralCode (uint16),onBehalfof(add))
    uint amount = 1000000;
    USDC.approve(address(AAVE),amount);
    AAVE.borrow(address(USDC),amount,2,0,address(this));
  }

  // EX7
	function repaySomeTokens() public{
    uint amount = 500000;
    AAVE.repay(address(USDC),amount,2,address(this));
  }

/*
	function doAFlashLoan() payable public{
    bytes calldata params="";
    uint amount=1000000000000;
    AAVE.flashLoan(address(this),address(USDC),amount,2,address(this),params,0);
  }

	function repayFlashLoan() payable public{
    // -1 repay all
    AAVE.repay(address(USDC),uint(-1),2,address(this));
  }
  */

}
