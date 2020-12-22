//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;
// pragma experimental ABIEncoderV2;

import "hardhat/console.sol";

contract TokenSure {


  address public tokenA;
  address public tokenB;
  address public Strategy;
  address public Margin;
  address public outToken; //要收割的代币 sushi,uni等等

  //tokenA,tokenB,策略,保证金  地址
  constructor(address _tokenA,address _tokenB,address _strategy,address _margin,address _outToken) public{
    tokenA = _tokenA;
    tokenB = _tokenB;
    Strategy = _strategy;
    Margin = _margin;
    outToken = _outToken;
  }

  //做市商操作.

  //创建募资, atoken最少数量,btoken最少数量,保证金数量,利息数量,募资结束时间,策略周期
  function create(uint256 _minAamount,uint256 _minBamount,uint256 _margin,uint256 _interest,uint256 _endtime,uint256 cycle) external returns(uint256 _id){}

  //添加,减少.保证金
  function margin(uint256 _id,uint256 _amount) external{}

  //募资结束
  function end(uint256 _id) external{}

  //募资者收割代币
  function harvest(uint256 _id) external{}

  //募资者退钱 募资不满以及最后结束时退保证金
  function refund(uint256 _id) external{} 

  //用户操作


  //打钱
  function buy(uint256 _id,address _token,uint256 _amount) external{}

  //退钱,募资不满全退. 以及 生成lp后剩下的按照比率退
  function userrefund(uint256 _id) external{}

  //募资成功后用户分股份
  function getshare(uint256 _id) external{}

  //周期结束后拿回利息与本金
  function userharvest(uint256 _id) external{}


  //任何人都可以操作.

  //保证金不够清算
  function liquidation(uint256 _id) external{}

}
