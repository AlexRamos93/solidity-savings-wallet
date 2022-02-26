# Solidity Savings Wallet

Savings Wallet is a contract that receives DAI deposits and automacally send this DAI to AAVE protocol to compound.

## Getting started

Rename the `.env.example` file to `.env` and replace the credentials necessary.

\*_Note: the addresses are hardcoded on the contract for kovan testnet, if you want to deploy in another testnet or even deploy to mainnet, make sure to change the addresses on the contract_

### Deploy

`npm run deploy`

### Verify contract

`npm run verify "CONTRACT ADDRESS"`

## Instaling

`$ npm install`

## Testing

`$ npm test`

## Kovan testnet addresses

| Name              | Address                                                                                                                     |
| :---------------- | :-------------------------------------------------------------------------------------------------------------------------- |
| Wallet            | [0x6Bc78C88a89E8366E77990caE83B308E5e5db334](https://kovan.etherscan.io/address/0x6Bc78C88a89E8366E77990caE83B308E5e5db334) |
| AAVE Lending Pool | [0xE0fBa4Fc209b4948668006B2bE61711b7f465bAe](https://kovan.etherscan.io/address/0xFf795577d9AC8bD7D90Ee22b6C1703490b6512FD) |
| DAI               | [0x2069B76Afe6b734Fb65D1d099E7ec64ee9CC76B2](https://kovan.etherscan.io/address/0x2069B76Afe6b734Fb65D1d099E7ec64ee9CC76B2) |
| aDAI              | [0xdCf0aF9e59C002FA3AA091a46196b37530FD48a8](https://kovan.etherscan.io/address/0xdCf0aF9e59C002FA3AA091a46196b37530FD48a8) |
