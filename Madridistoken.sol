 /* 
 * $MADIRDISTOKEN  
 * 
 * Telegram : t.me/MADRIDISTOKEN
 * Website :  madridistoken.com
 * 
 * $MADRIDISTOKEN is made to be fully transferred to its beloved community.
 * 
 * $MADRIDISTOKEN community is completely organic and will work hard as a community to make each member crypto-rich.
 *  
 * Great & Simple Features:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20.sol";
import "./ERC20Burnable.sol";
import "./Pausable.sol";
import "./Ownable.sol";

contract madridistoken is ERC20, ERC20Burnable, Pausable, Ownable {
    constructor() ERC20("Madridistoken", "MADRID") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
