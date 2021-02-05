# IKB Readme

Note: This document updates and edits the original FAQ. The original FAQ is still preserved in this repository for posterity and archival purposes.

## What is this?

*Digital Zones of Immaterial Pictorial Sensibility* is the first conceptual artwork to be hosted on the blockchain, originally created by [Mitchell F Chan](http://www.mitchellfchan.com). It was [unveiled at InterAccess Media Arts Centre in Toronto, Canada on August 30 2017](https://interaccess.org/event/2017/bitcoin-ethereum-and-conceptual-art), and later presented at [Kent State University](https://www.kent.edu/art/event/mitchell-f-chan-artist-talk). The project  uses blockchain technology and to re-examine art-specific definitions of immateriality and value. The artwork takes Yves Klein's *Zones of Immaterial Pictorial Sensibility* as its reference point. A full description of the project is presented in [*The Blue Paper*](https://github.com/mitchellfchan/IKB/blob/master/Digital-Zones-Of-Immaterial-Pictorial-Sensibility-Blue-Paper.pdf) (included as part of this Github repository.) This paper takes the format of a whitepaper, and attempts to outline a history of homologies between an artistic and financial definitions of value, and how those definitions became untethered from physical referents. It is *strongly* recommended than anyone interested in this project, or in art on the blockchain in general, read the *Blue Paper.* *Digital Zones* is a conceptual piece, and the artist has made an earnest attempt to communicate the artistic intent of the piece through this document.


## How do I purchase IKB?

Using Mist, MyEtherWallet, Parity, or the web 3.0 browser of your choice, watch the contract address at 
```
0x88ae96845e157558ef59e9ff90e766e22e480390
```

You will need to enter the contract ABI, which is found at the bottom of this document. Copy and paste it in.

Once your browser is watching the contract, you'll be able to see all sorts of relevant info, such as how many tokens are currently available for sale, how many have been burned, and which series is currently for sale.

### To purchase IKB, call the buy() function and send a quantity of ETH. The tokens you buy are automatically credited to your account.

### Be sure to include enough gas in your transaction. 
The IKB contract uses more computation than typical token contracts. It is recommended that you send up to 500000 gas to ensure your transaction is executed. Note that even this amount of gas will result in a transaction fee costing less than a penny. The IKB contract is unlike most other token contracts in that the more tokens you are purchasing, the more gas is required to run the transaction. This is because the IKB contract produces detailed records of provenance for each token sold, which requires a certain amount of gas per token.

## How many IKB are initially available?
The first series of IKB consists of 31 tokens, and each costs 0.1 ΞTH. Each subsequent series consists of only 10 tokens, at a price double that of the previous series. The contract will automatically return change if you try to purchase more tokens than are available, or if you send extra ΞTH. For more information, consult the blue paper.

## How do I view IKB tokens in my wallet?
You can view IKB token balance in your non-hosted Ethereum wallet that supports ERC20 tokens by watching the IKB contract.
```
IKB Smart Contract address: 0x88ae96845e157558ef59e9ff90e766e22e480390
Number of Decimals: 0
Symbol: IKB
```

## What wallets support IKB?
IKB complies with the ERC20 standard, and thus can be stored in any wallet which supprts ERC20 tokens. The artist cannot offer any recommendations for specific wallets, but will point out that the most popular IKB-compatible hardware wallet is the Ledger Nano S, and the most popular online wallet is MyEtherWallet. Node wallets such as Mist and Parity will also allow you to purchase IKB and view your token balance.

## When a series sells out, when will a new series be issued?
The issuance of future series is at the discretion of the artist. It is hard-coded into the contract that only 101 tokens will ever be created, but following the first series of 31, the remaining 80 tokens may not be released for years. However, it is the artist's intention to satisfy initial demand for the artwork, so if the first series does sell out quickly, the artist will likely issue another shortly after the sell-out (at the hard-coded price increase.)

## Can I burn my IKB to obtain the true immaterial value of the artwork?
Yes, call the ritual() function in your browser. Your IKB is destroyed and half the ΞTH you paid to the contract is "thrown in the river," or sent to an Ethereum address from which any funds are verifiably irretrievable.

<hr>

<h1>IKB TOKEN SALE TERMS</h1>
		
<p><span>General Guidelines</span></p>
<ol>
<li><span >The purchase of each Digital Zone of Immaterial Pictorial Sensibility is recorded through the transfer of a digital token. The token is created and transacted through a smart-contract I have written and deployed on the ethereum blockchain. The address of the smart contract will be posted publicly three days prior to the token sale, and can be reviewed or audited by anyone.</span></li>
<li><span>The token is denoted by the symbol IKB. This paper will hereby use &#8220;IKB&#8221; as a reference to the token.</span></li>
<li><span >Unlike most other digital currencies or tokens, IKB is indivisible. That is to say, it is impossible to be in possession of 2.5 or 0.314 IKB. Each IKB is an artwork, and one wouldn&#8217;t cut a painting into individual pieces.</span></li>
<li><span>IKB complies with ethereum&#8217;s ERC-20 standard, and therefore can be stored in any wallet or account which holds Ether or ethereum tokens. Holders will be able to see their balances in these wallets, and I consider the display of an IKB balance to be a “display value” of the artwork.</span></li>
</ol>
<p><span>Issuance</span></p>
<ol>
<li><span  >101 Digital Zones of Immaterial Pictorial Sensibility will be issued.</span></li>
<li><span  >31 Digital Zones will be issued in the first series, and 10 in each subsequent series.</span></li>
<li><span  >The first series will be released at 00:30 UTC on August 31, 2017 (20:30 EST August 30) on the ethereum Homestead network.</span></li>
<li><span  >When a series is released, all tokens in that series are available simultaneously. After that series sells out, no more IKB are available until the artist calls a function to release the next series. For example, upon the release of Series 0, 31 IKB will be available. Only after those 31 IKB are sold may I release a new series to make another 10 IKB available at a higher price. However, I reserve the right to withhold the release of new series indefinitely.</span></li>
<li><span  >The above policy means that, after Series 0, there may only ever be a maximum of 10 unsold IKB available for purchase at a time.</span></li>
<li><span  >The sale of Digital Zones is intended to last at least as long as my own life, and thus, the final series of IKB may not be released for years or decades. It is likely that I will release enough series of IKB tokens early on to satisfy whatever initial demand exists, and then spread out the release of subsequent series over many years, probably to correspond with the opening of special exhibitions.</span></li>
</ol>
<p><span  >How To Purchase IKB</span></p>
<ol>
<li><span  >A detailed guide on how to purchase IKB will be posted at mitchellfchan.com approximately one week prior to the beginning of the sale for Series 0. The guide will include the address of the IKB smart contract, instructions on how to purchase ether, and a guide on how to trade ether for IKB over a variety of client interfaces including Parity, Mist, and MyEtherWallet.</span></li>
<li><span  >IKB may only be purchased with the digital currency ether.</span></li>
<li><span  >Klein did not specify a set price for Zones sold in Series 0, but in keeping with his theme of doubling the price of each series, I have chosen to set the price of the 31 Digital Zones of Series 0 at 0.1 ΞTH. At the time of publication, 0.1 ΞTH is valued at $29.6 USD.</span></li>
<li><span  >The prices for each subsequent series double. The rate schedule is thus:<br />
</span><span  >Series 0 (31 works): 0.1 ΞTH</span><br />
<span  > Series 1 (10 works): 0.2 ΞTH</span><br />
<span  > Series 2 (10 works): 0.4 ΞTH</span><br />
<span  > Series 3 (10 works): 0.8 ΞTH</span><br />
<span  > Series 4 (10 works): 1.6 ΞTH</span><br />
<span  > Series 5 (10 works): 3.2 ΞTH</span><br />
<span  > Series 6 (10 works): 6.4 ΞTH</span><br />
<span  > Series 7 (10 works): 12.8 ΞTH</span></li>
</ol>
<p><span  >The Ritual</span></p>
<ol>
<li><span  >The smart contract includes a function which reproduces the effects of Klein’s ritual, and can be executed by any holder of IKB. Upon calling the function, the user obtains the true immaterial value of the Digital Zone of Immaterial Pictorial Sensibility.</span></li>
<li><span  >When the holder executes this function of the contract, their IKB token is destroyed and a quantity of ether equivalent to half the purchase price of that token is removed from my own account.</span></li>
<li><span  >When the ritual function is called, the holder’s IKB balance is shown to be reduced by one, and the balance of the smart contract does not increase commensurately—that token is removed from circulation. Another IKB token may not be issued in its place. The IKB smart contract records which tokens have been destroyed.</span></li>
<li><span  >In lieu of throwing gold into the river, my own ether is thrown to the miner of the block on which the ritual function is executed.</span></li>
<li><span  >When calling the ritual function, only one IKB is burned at a time. If a holder holds more than one IKB and wishes to obtain the true immaterial of more than one Digital Zone, they must call the function multiple times and each time specify which Digital Zone they are redeeming.</span></li>
<li><span  >The smart contract keeps an internal ledger of each transaction to ensure the amount of ether burned corresponds to the purchase price of the particular Digital Zone being redeemed.</span></li>
<li><span  >My own presence is not required to enact the ritual, a holder may easily perform it on their own. The features of the smart contract allow for a completely trustless exchange of this immaterial value. The smart-contract function satisfies all the requirements of the ritual, and does undoubtedly result in the transfer of the immaterial value. The token is verifiably destroyed and the ether is verifiably thrown back to a mining pool. Klein’s requirement for witnesses to the ritual is also satisfied: when the function is executed on the blockchain, it is witnessed by thousands of connected nodes who each confirm the validity of the ritual.</span></li>
<li><span  >Despite my presence not being necessary, I will be available to perform the ritual in person with an IKB holder who chooses to include me in the ritual. If this option is requested by the IKB holder, we will meet near a body of water, with the holder bringing their token on a laptop, phone, or hardware wallet. We will call the function to exchange the immaterial value of the artwork together.</span></li>
<li><span  >Following the execution of this function, the true immaterial value of the artwork belongs intrinsically to the owner.</span></li>
</ol>
<p><span  >Trading</span></p>
<ol>
<li><span  >Klein&#8217;s original receipts explicitly state that a receipt for a Zone may only be resold for double its original purchase price. I have read an account claiming that any resale for double the purchase price was required to involve Mr. Klein himself as an intermediary. However, I could not find evidence of this requirement in Klein&#8217;s original writings, and so I have chosen to disregard it and allow for IKB to be resold without myself acting as a facilitator. And obviously, following Mr. Klein&#8217;s death in 1962, Zone receipts were resold and it would have been impossible to enforce this requirement. However, owners of IKB are still instructed to sell their tokens for no less than double their purchase price.</span></li>
<li><span  >Because of the low issuance of IKB and its indivisibility, there will only ever be a maximum of 101 holders of IKB. Patrons looking to invest in IKB should be aware that due to this extreme illiquidity, any secondary market transactions of IKB will likely be conducted through private sales. I have no intention of lobbying any exchanges to list IKB.</span></li>
<li><span  >Despite the indivisibility of the token itself, emerging crypto fund management applications such as Prism or Melon will make it possible for fund managers to securitize their holdings of IKB and break that security into any number of tranches. Just like managers of traditional investment funds, I expect that the emerging class of digital asset fund managers will diversify their investment portfolios to include ownership of artworks. The IKB represents the first tokenized artwork in the class of digital assets, and as such may be seen as an investment proposition for these portfolios. However, I warn any fund manager considering securitizing IKB that the immaterial value of the artwork may not be transferred once the ritual has occurred, and likely cannot be redeemed in tranches.</span></li>
</ol>


## ABI: 

```json
[{"constant":false,"inputs":[{"name":"_edition","type":"uint256"}],"name":"ritual","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"issueNewSeries","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"_currentSupply","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"initialPrice","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"records","outputs":[{"name":"addr","type":"address"},{"name":"price","type":"uint256"},{"name":"burned","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificTransfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificApprove","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"theRiver","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"currentSeries","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_holder","type":"address"}],"name":"getHolderEditions","outputs":[{"name":"_editions","type":"uint256[]"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificTransferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"maxSupplyPossible","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"totalSold","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"zonesSwarmAddress","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"buy","outputs":[{"name":"success","type":"bool"}],"payable":true,"stateMutability":"payable","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"fund","outputs":[{"name":"success","type":"bool"}],"payable":true,"stateMutability":"payable","type":"function"},{"constant":true,"inputs":[{"name":"searchedRecord","type":"uint256"}],"name":"getTokenHolder","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"issuedToDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"series","outputs":[{"name":"price","type":"uint256"},{"name":"seriesSupply","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"},{"name":"_spender","type":"address"}],"name":"allowance","outputs":[{"name":"remaining","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"redeemEther","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"burnedToDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"payable":true,"stateMutability":"payable","type":"fallback"},{"anonymous":false,"inputs":[{"indexed":true,"name":"IKBedition","type":"uint256"},{"indexed":false,"name":"holderAddress","type":"address"},{"indexed":false,"name":"price","type":"uint256"},{"indexed":false,"name":"burned","type":"bool"}],"name":"UpdateRecord","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"seriesNum","type":"uint256"}],"name":"SeriesCreated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"owner","type":"address"},{"indexed":true,"name":"spender","type":"address"},{"indexed":true,"name":"edition","type":"uint256"}],"name":"SpecificApproval","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
```

## Can the Zones of Immaterial Pictorial Sensibility be displayed?
A display space for the artwork was originally deployed as an HTML file hosted on Swarm. It existed at:

[http://swarm-gateways.net/bzz:/0a52f265d8d60a89de41a65069fa472ac3b130c269b4788811220b6546784920]

This address is also hard-coded into the contract itself for posterity.

**UPDATE:** The original Swarm gateway was deprecated, and thus the link above no longer exists. So much in the same way that the "exhibitions" of Klein's original Zones eventually ended, so too has the exhibition of the *Digital Zones.* However, the artwork of course still exists in its immaterial aspect. Another display "exhibition" of the Zones may be arranged for hosting on IPFS at some point in the future.

## When will IKB be available for sale?
IKB tokens are made available for sale only after the artist issues a new series by calling a function in the contract. The first series of IKB will be issued manually following a lecture at InterAccess in Toronto, around 8:30PM EST on August 30, 2017. If you'd like to watch the lecture, it will be livestreamed on the InterAccess Facebook page at https://www.facebook.com/InterAccessTO/
