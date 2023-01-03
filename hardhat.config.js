require("@nomicfoundation/hardhat-toolbox");
require("hardhat-noir");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: '0.8.10',
    settings: {
      evmVersion: 'london',
      optimizer: { enabled: true, runs: 5000 },
    },
  },
  noir: {
    useNargo: true
  },
};
