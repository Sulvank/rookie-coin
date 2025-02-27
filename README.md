# **💰 RookieCoin - ERC20 Token with Burn and Rewards**

## **📝 Overview**

The **RookieCoin** smart contract is an ERC20-based cryptocurrency that integrates mechanisms for burning tokens, distributing rewards, and pausing transactions. Designed for efficiency and security, this contract allows token holders to benefit from an automated economic system.

> [!NOTE]  
> This smart contract follows OpenZeppelin's ERC20 standard for maximum security and interoperability.

### **🔹 Key Features:**
- ✅ **Automatic burning** (1% per transaction) to reduce token supply.
- ✅ **Reward system** (2% per transaction) for stakers.
- ✅ **Blacklist control** to prevent malicious actors.
- ✅ **Pausable mechanism** for emergency transaction suspension.

---

## **✨ Features**

### **🔥 Token Burning Mechanism**
- 1% of every transaction is automatically burned.
- Helps create deflationary pressure to potentially increase token value.

### **🎁 Rewards Distribution**
- 2% of each transaction is stored in the contract.
- Can be manually distributed by the contract owner.

### **⛔ Blacklist Protection**
- The owner can block specific addresses from sending or receiving tokens.

### **🛑 Emergency Pause**
- The owner can pause all transactions during critical situations.

> [!IMPORTANT]  
> The contract owner has administrative privileges to manage blacklists, pause transactions, and distribute rewards.

---

## **📖 Contract Summary**

### **Core Functions**

| 🔧 Function Name                          | 📋 Description                                               |
|------------------------------------------|------------------------------------------------------------|
| `transferWithFee(address, uint256)`      | Transfers tokens while applying burn and reward fees.       |
| `setBlacklisted(address, bool)`          | Blocks or unblocks an address from making transactions.     |
| `pause()`                                | Pauses all token transfers (only owner).                    |
| `unpause()`                              | Resumes token transfers (only owner).                       |
| `distributeRewards()`                    | Sends accumulated rewards to the owner for distribution.    |

---

## **⚙️ Prerequisites**

### **🛠️ Tools Required:**
- **🖥️ Remix IDE**: To deploy and interact with the contract ([Remix IDE](https://remix.ethereum.org)).
- **Metamask Wallet**: To interact with the blockchain.

### **🌐 Environment:**
- Solidity Compiler Version: `0.8.x`.
- Network: Local blockchain (JavaScript VM) or testnets like Goerli.

> [!TIP]  
> Always test your contract on a testnet before deploying on the mainnet.

---

## **🚀 How to Use the Contract**

### **1️⃣ Deploying the Contract**

1. Open [Remix IDE](https://remix.ethereum.org).
2. Create a new file named `RookieCoin.sol` and paste the contract code.
3. Navigate to the **Solidity Compiler** tab:
   - Select the compiler version `0.8.x`.
   - Click **✅ Compile RookieCoin.sol**.
4. Go to the **🛠️ Deploy & Run Transactions** tab:
   - Select **Environment** as `Injected Web3` if using MetaMask.
   - Deploy the contract by clicking **🚀 Deploy**.

### **2️⃣ Using the Contract in Remix**

#### **💰 A. Transfer Tokens with Fees**
1. Call `transferWithFee(address recipient, uint256 amount)`.
2. The transaction will automatically apply the burn and reward fees.

#### **🔒 B. Blacklist an Address**
1. Call `setBlacklisted(address account, bool value)`.
2. The address will be blocked from sending or receiving tokens.

#### **🚫 C. Pause and Unpause Transactions**
1. Call `pause()` to stop all transfers.
2. Call `unpause()` to resume transactions.

#### **🎁 D. Distribute Rewards**
1. Call `distributeRewards()`.
2. The stored rewards will be transferred to the owner for further distribution.

> [!WARNING]  
> Only the contract owner can pause transactions and manage the blacklist.

---

## **🛠️ Extending the Contract**

### **🔍 Possible Improvements**
- **🏦 Liquidity Pool Integration**: Automatic liquidity provisioning.
- **⛏️ Staking Mechanism**: Reward users who lock their tokens.
- **📊 DAO Governance**: Allow community voting on contract parameters.
- **🔗 Cross-Chain Bridge**: Enable token transfers across blockchains.

> [!CAUTION]  
> Ensure proper testing and auditing before adding new features to a live contract.

---

## **📜 License**

This project is licensed under the MIT license. See the LICENSE file for more details.

---

### 🚀 **RookieCoin is a next-gen token with automated economic controls!**

