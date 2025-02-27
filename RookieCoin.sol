// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract MyToken is ERC20, Ownable, Pausable {
    uint256 public burnRate = 1; // 1% de cada transacción se quema
    uint256 public rewardRate = 2; // 2% de cada transacción se redistribuye a los validadores
    mapping(address => bool) public blacklisted;

    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") Ownable() {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }


    function transferWithFee(address recipient, uint256 amount) external whenNotPaused returns (bool) {
        require(!blacklisted[msg.sender] && !blacklisted[recipient], "Address is blacklisted");

        uint256 burnAmount = (amount * burnRate) / 100;
        uint256 rewardAmount = (amount * rewardRate) / 100;
        uint256 transferAmount = amount - burnAmount - rewardAmount;

        _transfer(msg.sender, address(0), burnAmount); // Quema tokens
        _transfer(msg.sender, address(this), rewardAmount); // Guarda recompensas
        _transfer(msg.sender, recipient, transferAmount); // Transferencia final

        return true;
    }

    function setBlacklisted(address account, bool value) external onlyOwner {
        blacklisted[account] = value;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function distributeRewards() external onlyOwner {
        uint256 balance = balanceOf(address(this));
        require(balance > 0, "No rewards to distribute");
        _transfer(address(this), owner(), balance); // Envía recompensas al owner para distribuir manualmente
    }
}
