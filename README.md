# DegenToken

**DegenToken** is an ERC20 token deployed on the Avalanche network for **Degen Gaming**. This smart contract allows the owner to mint new tokens, and players to transfer, redeem, and burn tokens. Players can also check their token balances at any time.

## Features

- **Minting New Tokens**: The platform owner can mint new tokens and distribute them to players as rewards.
- **Transferring Tokens**: Players can transfer their tokens to others.
- **Redeeming Tokens**: Players can redeem their tokens for items in the in-game store.
- **Checking Token Balance**: Players can check their token balance at any time.
- **Burning Tokens**: Players can burn tokens that they own and no longer need.

## Deployment
To deploy this contract on the Avalanche network using Remix IDE and MetaMask, follow these steps:

**Open Remix IDE**: Go to Remix IDE.

**Load Contract Code**: Copy the smart contract code and paste it into a new file in Remix IDE.

**Compile the Contract**:

Click on the "Solidity Compiler" tab.
Select the appropriate Solidity version (0.8.20).
Click "Compile DegenToken.sol".

**Deploy the Contract**:

Click on the "Deploy & Run Transactions" tab.
Select "Injected Web3" as the environment to connect to MetaMask.
Make sure your MetaMask is connected to the Avalanche network.
Select the DegenToken contract from the dropdown.
Click "Deploy".
Confirm the transaction in MetaMask.

**Interact with the Contract**:

After deployment, you can interact with the contract using the Remix interface.
Use the available functions to mint, transfer, redeem, check balance, and burn tokens.

**Check transactions on snowtrace testnet**:
Go to **testnet.snowtrace.io** and from remix ide copy the address of your deployed contract and paste it in the snowtrace testnet search bar. You will get the transaction history of your all transactions.

## Usage
**Mint Tokens**: Only the owner can call the mint function to create new tokens.

**Transfer Tokens**: Use the transfer function to send tokens to another address.

**Redeem Tokens**: Call the redeem function to exchange tokens for in-game items.

**Check Balance**: Use the checkBalance function to view your token balance.

**Burn Tokens**: Call the burn function to destroy unwanted tokens.

## Events
ItemRedeemed: This event is emitted when a player redeems tokens for an item.
