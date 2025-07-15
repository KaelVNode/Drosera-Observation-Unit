# 🪴 Drosera Observation Unit

![Remix](https://img.shields.io/badge/Built%20with-Remix-%23F26D00?logo=ethereum)
![Testnet](https://img.shields.io/badge/Deployed%20on-Hoodi%20Testnet-blue)
![Status](https://img.shields.io/badge/shouldRespond-true-brightgreen)

A passive trap contract deployed on the Ethereum Hoodi testnet as part of the [Drosera Network](https://x.com/DroseraNetwork) ecosystem.

---

## 🧠 Concept  
Inspired by the Drosera plant: subtle, silent, sticky.  
Touch this contract and you’re observed via `shouldRespond()`.

---

## ✅ Status  
- ✅ Deployed on Ethereum Hoodi testnet  
- ✅ Passed dryrun  
- ✅ `shouldRespond() == true`  
- ✅ Working and verifiable

---

## 🔍 Details  
- **Contract Address:** [0xd9145C...](https://eth-hoodi.blockscout.com/address/0xd9145CCE52D386f254917e481eB44e9943F39138)  
- **Function:** `shouldRespond()`  
- **Tweet:** [Deployment thread](https://x.com/Kaelvin21/status/1945037342818845002)

---

## 📂 Repository Structure

```bash
📁 Drosera-Observation-Unit/
├── contracts/
│   └── DroseraObservationUnit.sol       # Main smart contract
├── scripts/
│   ├── deploy.js                        # (Optional) Deployment script using Hardhat
│   └── hardhat.config.js                # Hardhat network & compiler configuration
├── DEPLOYMENT_PROOF.md                 # Deployment proof and metadata
├── CONTRIBUTING.md                     # Contribution guidelines for this project
├── LICENSE                             # Project license (MIT)
└── README.md                           # Main project documentation

```
---

## 📦 Deploy Script (optional)  
This repo does not currently include an automated deployment script.  
You can easily add one by creating `scripts/deploy.js` with Hardhat or Ethers.js.

---

## 🚀 Deployment via Hardhat

To deploy the `DroseraObservationUnit` smart contract using Hardhat and Ethers.js, follow these steps:

### 🛠️ Prerequisites

Ensure you have `Node.js` and `npm` installed. Then, install dependencies:

```bash
npm install --save-dev hardhat
npm install @nomiclabs/hardhat-ethers ethers

```

### ⚙️ Deployment
Use the following command to deploy (adjust hoodiTestnet to match your config):

```bash
npx hardhat run scripts/deploy.js --network hoodiTestnet
```
---

## ⚠️ License  
MIT License — see [LICENSE](LICENSE) for details.

