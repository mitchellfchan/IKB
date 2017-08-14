/*

TESTING CHECKLIST TEMPLATE

-how much gas was used
    contract creation: .0407
    buy function:   .001 = 

-cannot create series before timestamp
    CHECK

-can issue first series only after certain time
    CHECK. worked so far

-other accounts cannot issue new series
    CHECK
    
-cannot issue another series before sellout
    CHECK. 
    
-can buy
    CHECK. yes, with exact amount

-does not issue change    
    CHECK.
    
-can transfer
    CHECK.

-how does it handle wanting to purcahse more than what is available???
    LOOKS LIKE THAT CREATES AN ERROR.
    INTERESTING: pretend there are only 4 IKB left at a price of 0.1 ETH.
        if you try to send 0.5 ETH, that's an error.
        if you try to send 0.49, it just keeps the change



-can retrieve funds
    CHECK

-non-owner cannot retrieve funds
    CHECK
    
-can add funds
    CHECK

-no one else can add funds
    CHECK
    
-cannot buy after series sold out  
    CHECK

-other account cannot issue new series after sellout
    forgot to check

-owner can issue new series after sellout

-cannot issue another series before sellout (again)

-currentSeries updates
    CHECK
-cannot issue new series after series 7

RESULTS:

-create public variable for tokens remaining for sale
-totalReleased, totalAvailable, totalSupply
-delete waitBetweenSeries
    CHECK


TO TEST NEXT VERSION:

do the constant functions return the values I want
possible: give change, or allow purchase of only max amount remaining







*/