# JeremyAirdropToken.sol
TechCrush Cohort4 Capstone project 1 - ERC20 Token with Airdrop

This commit adds the JeremyAirdropToken.sol file for Project 1: ERC-20 Token with Airdrop from TechCrush Cohort 4 Capstone.

Features:
- Standard ERC-20 token (name: Jeremy Airdrop Token, symbol: JAT, supply: 1,000,000)
- Uses OpenZeppelin ERC20 and Ownable
- Airdrop function: owner can send tokens to multiple addresses in one tx
- Includes array length check and onlyOwner modifier

Tested in Remix VM (Osaka) environment:
- Normal transfers work
- Airdrop to 5 addresses succeeds
- Fails on mismatched array lengths
- Only owner can call airdrop

- 0xd9145CCE52D386f254917e481eB44e9943F39138
AIRDROP contract address

0x43cc5f791cb29339c2f0efead3c468c91c13658563f8b293501437d54620164c
Transaction Hash


