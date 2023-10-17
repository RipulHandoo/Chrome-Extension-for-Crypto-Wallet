const Ethereum = {
    hex: '0x1',
    name: 'Ethereum',
    rpcUrl: 'https://ethereum.publicnode.com',
    ticker: "ETH"
};

const MumbaiTestnet = {
    hex: '0x13881',
    name: 'Mumbai Testnet',
    rpcUrl: 'https://matic-mumbai.chainstacklabs.com',
    ticker: "MATIC"
};

export const CHAINS_CONFIG = {
    "0x1": Ethereum,
    "0x13881": MumbaiTestnet,
};