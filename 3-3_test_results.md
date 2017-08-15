**TESTING CHECKLIST TEMPLATE**

**gas consumption**

 Creation: unknown + 1479800
External:
  allowance(address,address): 1111
  approve(address,uint256): 22318
  balanceOf(address): 747
  burnedToDate(): 1009
  buy(): unknown
  currentSeries(): 629
  decimals(): 349
  fund(): 780
  initialPrice(): 493
  issueNewSeries(): unknown
  issuedToDate(): 899
  maxSupplyPossible(): 625
  name(): unknown
  owner(): 695
  records(uint256): 1562
  redeemEther(): unknown
  ritual(): unknown
  saleStartTime(): 471
  series(uint256): 1208
  symbol(): unknown
  totalSold(): 767
  totalSupply(): 466
  transfer(address,uint256): 43481
  transferFrom(address,address,uint256): 64099
  transferOwnership(address): 21218
  zonesSwarmAddress(): unknown
Internal:

- [x] cannot create series before timestamp

- [x] can issue first series only after certain time

**DO THESE ITEMS FOR EVERY SERIES**

- [x] non-owner cannot issue series
    
- [x] cannot issue another series before sellout

- [x] non-owner cannot issue new series after sellout
    
- [x] can buy

- [x] balanceOf[this] updates

- [x] buying returns array data

- [ ] does not issue change    
    
- [ ] can transfer

- [x] how does it handle wanting to purcahse more than what is available???

- [ ] can retrieve funds

- [ ] non-owner cannot retrieve funds
    
- [ ] can add funds

- [ ] no one else can add funds

- [x] cannot buy after series sold out  

- [x] owner can issue new series after sellout

- [x] currentSeries updates
 
- [ ] cannot issue new series after series 7

**RESULTS:**


**TO TEST NEXT VERSION:**