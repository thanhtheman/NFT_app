// SPXD-License-Identifier MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;
    string public constant TOKEN_URI = "https://ipfs.io/ipfs/Qmaj8PbDfTc9JzVLCF4XvXE5qkqrVGyBoUjqs1QXJCnB8D?filename=image.json"

    constructor() ERC721("ThanhTheMan", "THANH") {
        s_tokenCounter = 0
    }

    function mintNft() public returns(uint256) {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter += 1;
        return s_tokenCounter;
    }

    function getTokenCounter() public view returns(uint256) {
        return s_tokenCounter;
    }
}