import { expect } from "chai";
import { ethers } from "hardhat";
import { Wallet__factory, Wallet } from "../typechain";

let WalletContract: Wallet__factory;
let wallet: Wallet;

describe("Wallet", function () {
  before(async () => await setup());
  it("Should deposit 10 DAI to aave lending pool", async () => {
    const tx = await wallet.deposit(1);
    const a = await tx.wait();
    console.log(a);
  });
});

const setup = async () => {
  WalletContract = await ethers.getContractFactory("Wallet");
  wallet = await WalletContract.deploy();
  await wallet.deployed();
};
