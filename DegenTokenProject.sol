// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    function createTokens(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function transferTokens(address recipient, uint256 amount) external {
        require(amount > 0, "Must not be less than 0");
        require(balanceOf(msg.sender) >= amount, "Not enough tokens");
        _transfer(msg.sender, recipient, amount);
    }

    function burnTokens(uint256 amount) external {
        require(amount > 0, "Must not be less than 0");
        _burn(msg.sender, amount);
    }

    function showGameStoreItems() external pure returns (string memory, string memory, string memory, string memory, string memory, string memory) {
        return ("Degen Sword", "Degen Shield", "Degen Helmet", "Degen Boots", "Degen Amulet", "Degen Armor");
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function getOwnerAddress() external view returns (address) {
        return owner();
    }

    function purchaseNFTItem(uint256 itemNumber) external {
        require(itemNumber >= 0 && itemNumber <= 5, "Invalid item number");
        uint256 itemCost;

        if (itemNumber == 0) {
            itemCost = 20;
        } else if (itemNumber == 1) {
            itemCost = 10;
        } else if (itemNumber == 2) {
            itemCost = 5;
        } else if (itemNumber == 3) {
            itemCost = 5;
        } else if (itemNumber == 4) {
            itemCost = 15;
        } else if (itemNumber == 5) {
            itemCost = 25;
        } else {
            revert("Invalid item number");
        }

        require(balanceOf(msg.sender) >= itemCost, "Not enough tokens to buy the item, try adding more tokens to avail any of the items here");
        _burn(msg.sender, itemCost);
    }
}
