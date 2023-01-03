const { noir } = require('hardhat');
const { expect } = require("chai");

const crypto = require('crypto');


describe('Verifies hashed secret proof', async () => {
    it("Correct ", async function () {
        const secret = 'alice';
        const hash = crypto.createHash('sha256').update(secret).digest('hex');

        console.log(secret);
        console.log(hash);

        const input = {
            secret: Array.from(new Uint8Array(Buffer.from(secret))),
            hash: Array.from(new Uint8Array(Buffer.from(hash, 'hex')))
        };

        console.log(input);

        expect(await noir.getCircuit().verifyProofFor(input)).to.be.true;
    });
});
