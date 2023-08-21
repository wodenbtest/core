const ReentrancyExample = artifacts.require("ReentrancyExample");

contract("ReentrancyExample", (accounts) => {
    it("should prevent reentrancy", async () => {
        const instance = await ReentrancyExample.new();
        await instance.deposit({ value: web3.utils.toWei("1", "ether"), from: accounts[0] });

        // Trigger reentrancy attack
        try {
            await instance.withdraw(web3.utils.toWei("1", "ether"), { from: accounts[0] });
        } catch (error) {
            assert(error.toString().includes("Revert"), "Expected revert");
        }

        const balance = await web3.eth.getBalance(instance.address);
        assert.equal(balance.toString(), web3.utils.toWei("1", "ether"), "Contract balance should not change");
    });
});
