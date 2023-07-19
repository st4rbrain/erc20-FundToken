-include .env

deploy-sepolia:
	forge script script/DeployFundToken.s.sol:DeployFundToken --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

deploy-mumbai:
	forge script script/DeployFundToken.s.sol:DeployFundToken --rpc-url $(MUMBAI_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(POLYGON_API_KEY) -vvvv