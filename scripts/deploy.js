const hre = require("hardhat");

async function main() {
  const trap = await hre.ethers.deployContract("Trap");

  console.log("Trap deployed to:", trap.target); // for ethers v6
  // or trap.address for ethers v5
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
