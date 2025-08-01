# 🩴 Drosera Observation Unit

A passive trap contract deployed on the Ethereum Hoodi testnet as part of the [Drosera Network](https://x.com/DroseraNetwork) ecosystem.

---

## 🧠 Concept

Inspired by the Drosera plant: subtle, silent, sticky.\
Touch this contract and you’re observed via `shouldRespond()`.

---

## ✅ Status

- ✅ Deployed on Ethereum Hoodi Testnet
- ✅ Passed dry run
- ✅ `shouldRespond()` returns `true`
- ✅ Live and functional

---

## 🔍 Deployment Details

- **Contract Name:** `Trap`
- **Interface:** `ITrap`
- **Address:** [`0xdaf5875aD7347454f184f46262A77BA4F04f0896`](https://hoodi.etherscan.io/address/0xdaf5875aD7347454f184f46262A77BA4F04f0896)
- **Function:** `shouldRespond()`
- **Tweet:** [Deployment Thread](https://x.com/Kaelvin21/status/1945041032397123894)

---

## 📂 Repository Structure

```bash
📁 Drosera-Observation-Unit/
├── contracts/
│   ├── ITrap.sol                        # Interface definition
│   └── DroseraObservationTrap.sol      # Main deployed contract
├── scripts/
│   └── deploy.js                        # Hardhat deployment script
├── artifacts/                          # ABI and bytecode output (autogenerated)
├── hardhat.config.js                   # Hardhat config
├── .env                                # Private keys & RPC URLs
├── DEPLOYMENT_PROOF.md                 # Deployment metadata & link
├── LICENSE                             # MIT License
└── README.md                           # You're reading this
```

---

## 🚀 Deploy it Yourself

### 🛠️ Requirements

Make sure you have the following installed:

```bash
npm install --save-dev hardhat
npm install @nomicfoundation/hardhat-toolbox dotenv ethers
```

Configure your `.env`:

```env
# Rename this file to .env and fill in your actual values

# Your private key without 0x prefix
PRIVATE_KEY=your_private_key_here

# Hoodi testnet RPC endpoint
HOODI_RPC_URL=https://rpc.hoodi.xyz

```

### ▶️ Deploy with Hardhat

```bash
npx hardhat run scripts/deploy.js --network hoodiTestnet
```

---

## 🧪 Example Function Calls

```js
const trap = await ethers.getContractAt("DroseraObservationTrap", "0xdaf5875aD7347454f184f46262A77BA4F04f0896");

const collected = await trap.collect();
const shouldTrigger = await trap.shouldRespond([collected]);

console.log("shouldRespond:", shouldTrigger);
```

---

## ⚠️ License

MIT — see [LICENSE](LICENSE) for full text.

KaelVNode
