import { expect } from "chai";
import { ethers } from "hardhat";
import { Wallet__factory, Wallet } from "../typechain";

let WalletContract: Wallet__factory;
let wallet: Wallet;

describe("Wallet", function () {
  before(async () => await setup());
  /* 
    TO BE DEVELOPED
  */
});

const setup = async () => {
  WalletContract = await ethers.getContractFactory("Wallet");
  wallet = await WalletContract.deploy();
  await wallet.deployed();
};
