# Deployment Proof: Trap.sol

## Contract Info

- **Contract Name:** Trap
- **Deployed Address:** [`0xf8049ACcA1CEbaa57F785b70d23FFC3f31d42D4A`](https://hoodi.etherscan.io/address/0xf8049ACcA1CEbaa57F785b70d23FFC3f31d42D4A)
- **Network:** Hoodi Testnet (`hoodiTestnet`)
- **Chain ID:** *(likely 3030 or similar — please verify with chain settings or block explorer)*

## Deployer Info

- **Deployer Address:** *(inferred from Hardhat signer - check contract creator on Etherscan)*
- **Deployment Timestamp:** *(see block timestamp in Etherscan)*
- **Transaction Hash:** *(see Etherscan — Deployment Tx)*

## Contract Details

- **Solidity Version:** ^0.8.28
- **Interface:** `ITrap`
- **Functions:**
  - `collect() external view returns (bytes memory)`
  - `shouldRespond(bytes[] calldata) external pure returns (bool, bytes memory)`
- **Implements:** `ITrap`

## Notes

- Contract is deployed but **not yet verified** on Hoodi Etherscan.
- Use Hardhat's `verify` task once the explorer supports verification.

