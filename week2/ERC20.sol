pragma solidity ^0.4.24;

import "./IERC20.sol";
import "./SafeMath.sol";

/**
 * @title Standard ERC20 token
 * @dev Implementation of the basic standard token.
 */
contract ERC20 is IERC20 {
  using SafeMath for uint256;

  mapping (address => uint256) internal _balances;
  mapping (address => mapping (address => uint256)) internal _allowed;
  uint256 internal _totalSupply;

  // -----------------------------------------
  // Public Functions (DO NOT CHANGE!!)
  // -----------------------------------------

  /**
  * @dev Total number of tokens in existence
  */
  function totalSupply() public view returns (uint256) {
    // TODO: Your Code Here
    return _totalSupply;
  }

  /**
  * @dev Gets the balance of the specified address.
  * @param owner The address to query the balance of.
  * @return An uint256 representing the amount owned by the passed address.
  */
  function balanceOf(address owner) public view returns (uint256) {
    // TODO: Your Code Here
    return  _balances[owner];
  }

  /**
   * @dev Function to check the amount of tokens that an owner allowed to a spender.
   * @param owner address The address which owns the funds.
   * @param spender address The address which will spend the funds.
   * @return A uint256 specifying the amount of tokens still available for the spender.
   */
  function allowance(address owner, address spender) public view returns(uint256) {
    // TODO: Your Code Here
    require(owner != spender);
    return _allowed[owner][spender];
  }

  /**
  * @dev Transfer token for a specified address
  * @param to The address to transfer to.
  * @param value The amount to be transferred.
  * @return Should always return true if all conditions are met. Otherwise throw exception.
  */
  function transfer(address to, uint256 value) public returns (bool) {
    // TODO: Your Code Here
    //require(msg.sender != to);
    //address(this).balance.transfer(to.balance);
    //to.call.value(value);
    //to.transfer(value);
    require(_balances[msg.sender] >= value && msg.sender != to);           
    require(_balances[to] + value >= _balances[to]); 
    _balances[msg.sender] -= value;                 
    _balances[to] += value;    
  }

  /**
   * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
   * Note that the owner (msg.sender) can approve someone to spend tokens that they do not yet have.
   * @param spender The address which will spend the funds.
   * @param value The amount of tokens to be spent.
   * @return Should always return true if success. Otherwise throw exception.
   */
  function approve(address spender, uint256 value) public returns (bool) {
    // TODO: Your Code Here
    /*newEntry = [msg.sender][spender];
    _allowed[newEntry];
    _totalSupply.add(value);
    spender.balance = value;
    _balances[spender]; */
    _allowed[msg.sender][spender] += value;
  }

  /**
   * @dev Transfer tokens from one address to another
   * @param from address The address which you want to send tokens from
   * @param to address The address which you want to transfer to
   * @param value uint256 the amount of tokens to be transferred
   */
  function transferFrom(address from, address to, uint256 value) public returns (bool) {
    // TODO: Your Code Here
    require( allowance(from, msg.sender) <= value);
    require(_balances[from] >= value && to != to);           
    require(_balances[to] + value >= _balances[to]); 
    _balances[from] -= value;                 
    _balances[to] += value;  
  }

  // -----------------------------------------
  // Internal functions (you can write any other internal helper functions here)
  // -----------------------------------------

}
