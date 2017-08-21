**TESTING CHECKLIST TEMPLATE**

**gas consumption**


- [x] cannot create series before timestamp

- [x] can issue first series only after certain time

**DO THESE ITEMS FOR EVERY SERIES**

- [x] non-owner cannot issue series
    
- [x] cannot issue another series before sellout

- [x] non-owner cannot issue new series after sellout
    
- [x] can buy

- [x] balanceOf[this] updates

- [x] buying returns array data

- [x] does not issue change    
    
- [x] can transfer

- [x] how does it handle wanting to purcahse more than what is available???

- [x] can retrieve funds

- [x] non-owner cannot retrieve funds
    
- [x] can add funds

- [x] no one else can add funds

- [x] cannot buy after series sold out  

- [x] owner can issue new series after sellout

- [x] currentSeries updates
 
- [ ] cannot issue new series after series 7

**BURNING**

- [x] can burn

- [x] burning reduced balance

- [x] burned tokens cannot be transferred  //BUG


**RESULTS:**


**TO TEST NEXT VERSION:**