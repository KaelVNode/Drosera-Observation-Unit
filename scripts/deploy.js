const { ethers } = require("hardhat");

async function main() {
  const Trap = await ethers.getContractFactory("DroseraObservationTrap");
  const trap = await Trap.deploy();

  await trap.waitForDeployment();

  console.log("Trap deployed to:", trap.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
