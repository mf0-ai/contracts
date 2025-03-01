# MyToken ERC20 Project

This project is a simple ERC20 token implementation using OpenZeppelin contracts. The token has minting and burning functions disabled. It includes a test suite and a deployment script using the Foundry toolchain.

## Prerequisites

- [Foundry](https://github.com/foundry-rs/foundry) installed on your machine.
- An Ethereum wallet with some testnet ETH for deployment.
- Access to an Ethereum node (e.g., Infura, Alchemy) for deployment.

## Installation

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd my-erc20-token
   ```

2. Install dependencies:

   ```bash
   forge install
   ```

## Running Tests

To run the tests, use the following command:
```bash
forge test
```

This will execute the test suite located in the `test/` directory, which includes tests for token transfers.

## Deployment

### Ethereum Network

1. Set up your environment variables for deployment. You need to provide your Ethereum node's RPC URL and your wallet's private key. You can do this by creating a `.env` file:

   ```plaintext
   ETH_RPC_URL=<your-ethereum-rpc-url>
   PRIVATE_KEY=<your-private-key>
   ```

2. Deploy the contract using the following command:

   ```bash
   forge script script/DeployMyToken.s.sol --rpc-url $ETH_RPC_URL --private-key $PRIVATE_KEY --broadcast
   ```

### Base Network

To deploy on the Base network, you need to change the RPC URL to point to a Base network node. Follow the same steps as above, but replace the `ETH_RPC_URL` with your Base network RPC URL.

1. Update your `.env` file:

   ```plaintext
   BASE_RPC_URL=<your-base-network-rpc-url>
   ```

2. Deploy the contract using the following command:

   ```bash
   forge script script/DeployMyToken.s.sol --rpc-url $BASE_RPC_URL --private-key $PRIVATE_KEY --broadcast
   ```

## Notes

- Ensure you have enough testnet ETH in your wallet for the deployment.
- The initial supply of the token is set in the deployment script. Adjust it as needed.
- The deployment script logs the address of the deployed contract.

## License

This project is licensed under the MIT License.

