require("@nomiclabs/hardhat-ethers");

module.exports = {
  solidity: "0.8.20",
  networks: {
    hoodiTestnet: {
      url: "https://rpc-hoodi-chain.example", // Replace with actual RPC URL
      accounts: ["0xYOUR_PRIVATE_KEY"]        // Replace with your private key (keep it safe)
    }
  }
};
