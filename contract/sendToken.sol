pragma solidity ^0.5.11;

import "https;//github.com/OpenZeppelin-contracts/blob/master/contracts/math/SafeMath.sol";


contract TransferToken {
    function transferToken() external {
        Token token = Token(0x43CB16484E95480e6666A17cf487AbdAd792e331);
        token.TransferFrom(msg.sender,100);
    }

    function transferFrom(adddress recipient, uint amount) external {
        Token token = Token(0x43CB16484E95480e6666A17cf487AbdAd792e331);
        token.TransferFrom(msg.sender,recipient,amount);
    }
}


contract Owner {
    function transfer(address recipient, uint amount) external {
        Token token = Token(0x43CB16484E95480e6666A17cf487AbdAd792e331);
        token.approve(0xe1009e72EEA437E7a91818319Dfd86f5D517e4f2,amount);

        TransferToken transferToken = TransferToken(0xe1009e72EEA437E7a91818319Dfd86f5D517e4f2);
        transferToken.transferFrom(recipient, amount);
    }
}