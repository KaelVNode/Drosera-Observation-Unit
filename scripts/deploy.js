// scripts/deploy.js

const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying with:", deployer.address);

  const ContractFactory = await ethers.getContractFactory("DroseraObservationUnit");
  const contract = await ContractFactory.deploy();

  await contract.deployed();

  console.log("Deployed at:", contract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
