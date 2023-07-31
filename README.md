# ERC-20 FundToken

This is a sample ERC-20 token named FundToken (FND) made using openzeppelin ERC20 contract.
<br><br>

## Getting Started
### Requirements
  - **[git](https://git-scm.com/downloads)**
      - Download and install git from this link
      - Verify installation by running `git --version` in the terminal to see an output like `git version x.y.z`
  - **[foundry](https://book.getfoundry.sh/)**
      - Run the following command in the terminal:
          `curl -L https://foundry.paradigm.xyz | bash`
      - Open a new terminal and run `foundryup`
      - Verify installation by running `forge --version` in the terminal to see an output like `forge 0.2.0`
### Setup
  - Run these commands in the terminal: <br><br>
      ```bash
      git clone https://github.com/st4rbrain/erc20-FundToken.git
      cd erc20-FundToken
      forge build
      ```
      Setup completed!<br>
      **terminal refers to bash terminal in Linux or [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)*
<br><br>
## Usage
### Testing
  1. Run all the test functions on the local [Anvil](https://book.getfoundry.sh/anvil/) chain
          
     ```bash
     forge test
     ```
  2. Run a particular test function<br>
     ```bash
     forge test --match-test testFunctionName
     ```
  3. Forked testing to test on a simulated testnet or mainnet<br>
     ```bash
     forge test --fork-url $SEPOLIA_RPC_URL
     ```
<br>

**To check the percentage of contract functions covered in tests**
```bash
forge coverage
```
<br> 

### Deployment
  1. **Deploy to Anvil Local Chain**
      - Temporary Anvil deployment (can't do any interactions with the contract deployed)
  
          ```bash
          forge script scripts/DeployFundToken.s.sol
          ```
      - Deploy to local Anvil chain
          - Open a second terminal and fire Anvil by running the command: &nbsp;&nbsp; `anvil`
          - Copy any of the ten private keys shown in the terminal
          - Run this command in the first terminal:
  
            ```bash
            forge script script/DeployFundToken.s.sol --rpc-url http://127.0.0.1:8545 --private-key <COPIED_PRIVATE_KEY> --broadcast
            ```
            <br>
  2. **Deploy to Testnets or Mainnets**
     
      - Setup Environment Variables
         
          - Create a `.env` file in the working directory similar to `.env.example` in this repo
          - Set your own `SEPOLIA_RPC_URL` and `PRIVATE_KEY`<br><br>
      - &#x1F4A1; **`PRIVATE_KEY`** : &nbsp;&nbsp;Private Key of any account of your Web3 wallet (like Metamask)
      > NOTE: For development purposes, please use an account that doesn't have any real funds associated with it
      
      - &#x1F4A1; **`SEPOLIA_RPC_URL`**: &nbsp;&nbsp; API of the Sepolia testnet node you're working with. Get this for free from [Alchemy](https://alchemy.com/?a=673c802981)<br><br>
      - You can also add your `ETHERSCAN_API_KEY` if you want to verify your contract on [Etherscan](https://etherscan.io/)
      - Get some testnet ETH from [Chainlink faucet](https://faucets.chain.link/)
      - Deploy by running the command:
    
        ```bash
        forge script script/DeployFundToken.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY
        ```
  <br>

## Access Token in Metamask! &nbsp;<img src="https://cdn3.emoji.gg/emojis/1385-metamask.png" alt="Metamask" width="24" height="24">

Once you have deployed the contract on any network follow these steps to access your token in your Metamask wallet:
- Open your Metamask wallet and switch to the account that deployed the contract
- Now select `Import tokens` and enter your contract address, symbol, and decimal and click `Add`

**Voila!** The Tokens sections must now be showing **`1000 FND`**. 
<br>



# Thank You!
If you find this useful, feel free to contribute to this project by adding more functionality or finding any bugs 🤝

## You can also donate! 💸
**Metamsk Account Address**: 0x2726c81f38f445aEBA4D54cc74CBca4f51597D17
