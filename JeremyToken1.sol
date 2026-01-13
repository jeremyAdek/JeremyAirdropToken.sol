// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// Import OpenZeppelin contracts: ERC20 for standard token functions, Ownable for owner-only access control
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Jeremy Airdrop Token (JAT) is a personal ERC20 token with built-in airdrop function
contract JeremyToken is ERC20, Ownable {
    
    constructor()ERC20("Jeremy Airdrop Token", "JAT") Ownable(msg.sender){
        // mint 1,000,000 token to the deployer (ME) on the launch
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Allows owner to send different amounts of tokens to multiple addresses in one transaction (saves gas)
    function airdrop(address[] calldata recipients, uint256[] calldata amounts) external onlyOwner {
       require(recipients.length == amounts.length, "Arrays length mismatch");
       require(recipients.length > 0, "No recipients provided");

       for (uint i = 0; i < recipients.length; i++) {
         require(recipients[i] != address(0),"Cannot send to zero address");
            _transfer(owner(),recipients[i], amounts[i]);
       }
    }
}
