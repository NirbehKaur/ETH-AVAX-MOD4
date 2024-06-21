// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
     struct Item {
     string name;
     uint256 price;
    }
    Item[] public items;
    mapping(address => mapping(uint256 => uint256)) public redeemedItems;

    constructor() ERC20("DegenToken", "DGN") Ownable(msg.sender) {
        items.push(Item("ItemId 0: DGN Goodies", 50));
        items.push(Item("ItemId 1: DGN T-Shirts/Swags", 70));
        items.push(Item("ItemId 2: DGN Boosters/PowerUps", 30));
        items.push(Item("ItemId 3: Special DGN Puzzle Box", 40));
    }

    function mint(address receiver, uint256 amount) external onlyOwner {
        require(receiver!= address(0),"Invalid address, can't be the address of receiver");
        _mint(receiver,amount);
    }

    function transfer(address receiver, uint256 amount) public override returns (bool) {
        require(amount>0, "Amount to be transferred must be greater than zero.");
        _transfer(_msgSender(), receiver,amount);
        return true;
    }

    function redeem(uint256 itemId, uint256 quantity) public {
        require(itemId < items.length,"Item does not exist");
        require(balanceOf(msg.sender) >= items[itemId].price*quantity, "Insufficient balance to redeem item");
        uint256 totalPrice = items[itemId].price*quantity;
        _burn(msg.sender, totalPrice);
        redeemedItems[msg.sender][itemId] += quantity;
        emit ItemRedeemed(msg.sender, itemId, quantity);
    }

    function checkBalance(address account) external view returns (uint256){
        return balanceOf(account);
    }

    function getRedeemedItems(address account, uint256 itemId) external view returns (uint256){
        return redeemedItems[account][itemId];
    }

    event ItemRedeemed(address indexed account, uint256 indexed itemId, uint256 quantity);
}
