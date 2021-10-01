// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CRET is Ownable, ERC20("Credit Token", "CRET") {
    /**
     * Mint New ERC20 Token
     *
     * @param amount - Amount of ERC20 tokens to be added
     */
    constructor(uint256 amount)  {
        _mint(_msgSender(), amount);
    }
    
    function minttoken(uint256 _amount) external onlyOwner{
         _mint(_msgSender(), _amount);
    }
}
