# IKB FAQ

## Can I visit the Zones of Immaterial Pictorial Sensibility?
Yes, the artwork is now deployed to Swarm. Visit it at:

[http://swarm-gateways.net/bzz:/0a52f265d8d60a89de41a65069fa472ac3b130c269b4788811220b6546784920]

This address is also hard-coded into the contract itself for posterity.

## When will IKB be available for sale?
IKB tokens are made available for sale only after the artist issues a new series by calling a function in the contract. The first series of IKB will be issued manually following a lecture at InterAccess in Toronto, around 8:30PM EST on August 30, 2017. If you'd like to watch the lecture, it will be livestreamed on the InterAccess Facebook page at https://www.facebook.com/InterAccessTO/

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
The issuance of future series is at the discretion of the artist. It is hard-coded into the contract that only 101 tokens will ever be created, but following the first series of 31, the remaining 80 tokens may not be released for years. However, it is the artists intention to satisfy initial demand for the artwork, so if the first series does sell out quickly, the artist will likely issue another shortly after the sell-out (at the hard-coded price increase.)

## Can I burn my IKB to obtain the true immaterial value of the artwork
Yes, call the ritual() function in your browser. Your IKB is destroyed and half the ΞTH you paid to the contract is "thrown in the river," or sent to an Ethereum address from which any funds are verifiably irretrievable.

## ABI: 

```json
[{"constant":false,"inputs":[{"name":"_edition","type":"uint256"}],"name":"ritual","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"issueNewSeries","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"_currentSupply","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"initialPrice","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"records","outputs":[{"name":"addr","type":"address"},{"name":"price","type":"uint256"},{"name":"burned","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificTransfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificApprove","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"theRiver","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"currentSeries","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_holder","type":"address"}],"name":"getHolderEditions","outputs":[{"name":"_editions","type":"uint256[]"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificTransferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"maxSupplyPossible","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"totalSold","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"zonesSwarmAddress","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"buy","outputs":[{"name":"success","type":"bool"}],"payable":true,"stateMutability":"payable","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"fund","outputs":[{"name":"success","type":"bool"}],"payable":true,"stateMutability":"payable","type":"function"},{"constant":true,"inputs":[{"name":"searchedRecord","type":"uint256"}],"name":"getTokenHolder","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"issuedToDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"series","outputs":[{"name":"price","type":"uint256"},{"name":"seriesSupply","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"},{"name":"_spender","type":"address"}],"name":"allowance","outputs":[{"name":"remaining","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"redeemEther","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"burnedToDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"payable":true,"stateMutability":"payable","type":"fallback"},{"anonymous":false,"inputs":[{"indexed":true,"name":"IKBedition","type":"uint256"},{"indexed":false,"name":"holderAddress","type":"address"},{"indexed":false,"name":"price","type":"uint256"},{"indexed":false,"name":"burned","type":"bool"}],"name":"UpdateRecord","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"seriesNum","type":"uint256"}],"name":"SeriesCreated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"owner","type":"address"},{"indexed":true,"name":"spender","type":"address"},{"indexed":true,"name":"edition","type":"uint256"}],"name":"SpecificApproval","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
```


