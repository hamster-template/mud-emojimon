import { MUDChain, latticeTestnet, mudFoundry } from "@latticexyz/common/chains";

export const sepolia = {
  name: "Sepolia Testnet",
  id: 11155111,
  network: "sepolia-testnet",
  nativeCurrency: { decimals: 18, name: "SepoliaETH", symbol: "SepoliaETH" },
  rpcUrls: {
    default: {
      http: ["https://eth-sepolia.g.alchemy.com/v2/jGULycigMNbiLM7dAPUNMQLPgSaxpaC0"],
      webSocket: ["https://eth-sepolia.g.alchemy.com/v2/jGULycigMNbiLM7dAPUNMQLPgSaxpaC0"],
    },
    public: {
      http: ["https://eth-sepolia.g.alchemy.com/v2/jGULycigMNbiLM7dAPUNMQLPgSaxpaC0"],
      webSocket: ["https://eth-sepolia.g.alchemy.com/v2/jGULycigMNbiLM7dAPUNMQLPgSaxpaC0"],
    },
  },
  blockExplorers: {
    etherscan: {
      name: "Etherscan",
      url: "https://sepolia.etherscan.io",
    },
    default: {
      name: "Etherscan",
      url: "https://sepolia.etherscan.io",
    },
  },
} as const satisfies MUDChain;

// If you are deploying to chains other than anvil or Lattice testnet, add them here
export const supportedChains: MUDChain[] = [mudFoundry, latticeTestnet, sepolia];


