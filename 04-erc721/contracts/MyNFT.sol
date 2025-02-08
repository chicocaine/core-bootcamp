// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage {
    uint256 tokenId = 1;

    constructor() ERC721("chicocaine", "CHICO") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://gist.githubusercontent.com/chicocaine/8dc50fe3cb9584ba9078d00f094d4faa/raw/364a0667a4eb81b8910d994c3c59b7b688ee6241/metadata.json"
        );
        tokenId++;
    }
}