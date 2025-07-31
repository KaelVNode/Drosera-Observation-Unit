require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");

const PRIVATE_KEY = process.env.PRIVATE_KEY;

if (!PRIVATE_KEY) {
  throw new Error("❌ PRIVATE_KEY not found in .env");
}

console.log("✅ hardhat.config.js loaded with PRIVATE_KEY and custom network");

module.exports = {
  solidity: "0.8.28",
  networks: {
    hoodiTestnet: {
      url: "https://0xrpc.io/hoodi", // replace with actual working RPC if needed
      accounts: [PRIVATE_KEY],
    },
  },
};
