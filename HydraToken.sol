pragma solidity ^0.5.2;

import "./ERC20Detailed.sol";
import "./ERC20.sol";

contract HydraToken is ERC20, ERC20Detailed {
    uint8 public constant DECIMALS = 6;
    uint256 public constant INITIAL_SUPPLY = 300000000*1000000;

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("HydraToken", "HDR", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}