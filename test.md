sequenceDiagram;
  participant User
  participant Lagrange Platform
  participant Smart Contract
  participant DON
    User->>Lagrange Platform: 1. Upload data asset;
    User->>Lagrange Platform: 2. Request DataNFT Generation
    Lagrange Platform->>Smart Contract: 3. claimDataNFT(datasetName, metadataUri)
    Smart Contract->>DON: 4. Generate Metadata on IPFS
    DON->>Smart Contract: 5. Returns CID
    Smart Contract->>Smart Contract: 6. Creates New Data NFT