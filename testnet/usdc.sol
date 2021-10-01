// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDC is ERC20 {
    constructor() ERC20("USD Coin", "USDC") {}

    function mint(uint256 _amount) external {
    	_mint(msg.sender, _amount);
    }
    
    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
