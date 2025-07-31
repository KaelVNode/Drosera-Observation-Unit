require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    hoodiTestnet: {
      url: "https://0xrpc.io/hoodi", // replace with your actual RPC if different
      accounts: [process.env.PRIVATE_KEY].filter(Boolean),
    },
  },
};
