# Degen Token Project

Simple overview of the Degen Token Project

## Description

DegenToken is implemented as a solidity smart onctract using the ERC-20 Standard that is also featured in the previous modules of the course.

## Features

1. **Token Creation**
    - Only the owner can create the tokens.
      
2. **Token Transferring**
    - Both the owner and the recipient can transfer tokens.

3. **Token Burning**
    - Both can burn tokens when those tokens are also unused.

4. **In-Game Item Purchasing using Tokens**
    - Can display the list that are available for purchasing
    - Users can buy those items with the use of their tokens via burning. 

### Smart Contract Details

- **Token Name:** Degen
- **Token Symbol:** DGN


### Functions

1. **createTokens(address to, uint256 amount):**
   - Creates new tokens and distributes them to the specified address. (Owner only)

2. **transferTokens(address recipient, uint256 amount):**
   - Transfers a specified amount of tokens to the recipient.

3. **burnTokens(uint256 amount):**
   - Burns a specified amount of tokens, reducing the total supply.

4. **showGameStoreItems():**
   - Returns a list of virtual items available in the in-game store.

5. **getBalance():**
   - Returns the token balance of the caller.

6. **getOwnerAddress():**
   - Returns the address of the contract owner.

7. **purchaseNFTItem(uint256 itemNumber):**
   - Allows users to purchase virtual items from the in-game store by burning tokens.


## Authors

Contributor name and Contact Info

Stephen Camilon
(https://github.com/Stephencamilon)
