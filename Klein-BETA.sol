//      KLEIN v. 4.02
//      By Mitchell F. Chan


/*

OVERVIEW:

This contract manages the purchase and transferral of Digital Zones of Immaterial Pictorial Sensibility.
It reproduces the rules originally created by Yves Klein which governed the transferral of his original Zones of Immaterial Pictorial Sensibility.

The project is described in full in the Blue Paper included in this repository.


ABI:
[{"constant":false,"inputs":[{"name":"_edition","type":"uint256"}],"name":"ritual","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[{"name":"success","type":"bool"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"issueNewSeries","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"totalSupply","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"saleStartTime","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"initialPrice","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"success","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"records","outputs":[{"name":"addr","type":"address"},{"name":"price","type":"uint256"},{"name":"burned","type":"bool"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_edition","type":"uint256"}],"name":"specificTransfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"currentSeries","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"searchedRecord","type":"uint8"}],"name":"getTokenHolder","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"maxSupplyPossible","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"totalSold","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"zonesSwarmAddress","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"buy","outputs":[{"name":"","type":"uint256[]"}],"payable":true,"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"success","type":"bool"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"fund","outputs":[],"payable":true,"type":"function"},{"constant":true,"inputs":[],"name":"issuedToDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"series","outputs":[{"name":"price","type":"uint256"},{"name":"seriesSupply","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"},{"name":"_spender","type":"address"}],"name":"allowance","outputs":[{"name":"remaining","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"redeemEther","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"burnedToDate","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"inputs":[{"name":"_saleStartTime","type":"uint256"}],"payable":false,"type":"constructor"},{"payable":true,"type":"fallback"},{"anonymous":false,"inputs":[{"indexed":true,"name":"IKBedition","type":"uint256"},{"indexed":false,"name":"holderAddress","type":"address"},{"indexed":false,"name":"price","type":"uint256"},{"indexed":false,"name":"burned","type":"bool"}],"name":"UpdateRecord","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"series","type":"uint256"}],"name":"SeriesCreated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"edition","type":"uint256"}],"name":"Burned","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
*/

pragma solidity ^0.4.15;

// token boilerplate
contract SafeMath {

    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
      uint256 z = x + y;
      assert((z >= x) && (z >= y));
      return z;
  }

  function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
      assert(x >= y);
      uint256 z = x - y;
      return z;
  }

  function safeMult(uint256 x, uint256 y) internal returns(uint256) {
      uint256 z = x * y;
      assert((x == 0)||(z/x == y));
      return z;
  }
}

//  token boilerplate
contract owned {

    address public owner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) revert();
        _;
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}

// interface for ERC20 standard token
contract ERC20 {
    function totalSupply() constant returns (uint256 totalSupply);
    function balanceOf(address _owner) public constant returns (uint256 balance);
    function transfer(address _to, uint256 _value) returns (bool success);
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
    function approve(address _spender, uint256 _value) returns (bool success);
    function allowance(address _owner, address _spender) constant returns (uint256 remaining);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract Klein is ERC20, SafeMath, owned {
    
    function balanceOf(address _owner) constant returns (uint256 balance) {
        return balances[_owner];
    }

    function approve(address _spender, uint256 _value) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
      return allowed[_owner][_spender];
    }

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;


                                                    //The Swarm address of the artwork is saved here for reference and posterity
    string public constant zonesSwarmAddress = "0a52f265d8d60a89de41a65069fa472ac3b130c269b4788811220b6546784920";
    string public constant name = "Digital Zone of Immaterial Pictorial Sensibility";
    string public constant symbol = "IKB";
    uint public constant decimals = 0;
    uint public maxSupplyPossible;
    bool first = true;
    uint public saleStartTime;                      // will be initialized to 8:30PM EST August 30, 2017
    uint public initialPrice = 10**17;              // should equal 0.1 ETH
    uint public currentSeries;    
    uint public issuedToDate;
    uint public totalSold;
    uint public burnedToDate;
    
                                                    // Each IBKSeries represents one of Klein's receipt books, or a series of issued tokens.
    struct IKBSeries {
        uint price;
        uint seriesSupply;
    }

    IKBSeries[8] public series;                     // An array of all 8 series

    struct record {
        address addr;
        uint price;
        bool burned;
    }

    record[101] public records;                     // An array of all 101 records
    
    event UpdateRecord(uint indexed IKBedition, address holderAddress, uint256 price, bool burned);
    event SeriesCreated(uint indexed series);
    event Burned(uint indexed edition);
    
    function Klein(uint256 _saleStartTime) {
        saleStartTime = _saleStartTime;
        currentSeries = 0;
        series[0] = IKBSeries(initialPrice, 31);                    // the first series has unique values...
        
        for(uint i = 1; i < series.length; i++){                    // ...while the next 7 can be defined in a for loop
            series[i] = IKBSeries(series[i-1].price*2, 10);
        }            
        
        maxSupplyPossible = series[0].seriesSupply + 
        series[1].seriesSupply + 
        series[2].seriesSupply + 
        series[3].seriesSupply + 
        series[4].seriesSupply + 
        series[5].seriesSupply + 
        series[6].seriesSupply + 
        series[7].seriesSupply;
        totalSold = 0;
        burnedToDate = 0;
    }

    function totalSupply() constant returns (uint totalSupply) {
      totalSupply = maxSupplyPossible;
      return totalSupply;
    }


    function issueNewSeries() onlyOwner returns (string){
        if(!first){
            currentSeries++;    // the first time we run this function, don't run up the currentSeries counter. Keep it at 0
        } else if (first){
            first=false;    // ...but only let this work once.
        } 

        if(issuedToDate >= maxSupplyPossible || issuedToDate + series[currentSeries].seriesSupply > maxSupplyPossible) revert();         //you can only issue a new series if there are no more tokens available to buy
        if(now < saleStartTime) revert();                           //you can only issue a new series if the sale has started
        if(balances[this] > 0) revert();                            //can only issue a new series if you've sold all the old ones

        balances[this] += series[currentSeries].seriesSupply;
        issuedToDate += series[currentSeries].seriesSupply;
        SeriesCreated(currentSeries);
        return "Created Series";
    }


    function buy() payable returns (uint[]){
        //this function is probably OK
        uint amount = msg.value / series[currentSeries].price;      // calculates the number of tokens the sender will buy
        uint[] memory editionsPurchased = new uint[](amount);
        if(balances[this] == 0) revert();
        if(msg.value == 0) revert();
        if (balances[this] < amount && balances[this] > 1) {        // this section handles what happens if someone tries to buy more than the currently available supply
            uint256 receivable = safeMult(balances[this], series[currentSeries].price);
            uint256 returnable = msg.value - receivable;
            amount = balances[this];        
            if(!msg.sender.send(returnable)) revert();                          //IMPORTANT QUESTION: Is this a security risk? If the buy() function is called from a contract address rather than a wallet address, it may not have a fallback function. It could trap my send in malicious code...
        }
        if (balances[this] < amount) revert();                      // checks if it has enough to sell. Essentially a double-check after the last block of code
        
        balances[msg.sender] += amount;                             // adds the amount to buyer's balance
        balances[this] -= amount;                                   // subtracts amount from seller's balance
        Transfer(this, msg.sender, amount);                         // execute an event reflecting the change

        //now let's make a record of every sale
        for(uint k = 0; k < amount; k++){
            records[totalSold] = record(msg.sender, series[currentSeries].price, false);
            totalSold++;
            editionsPurchased[k] = totalSold;
            //TODO::
            //UpdateRecord()
        }

        return editionsPurchased;                                           // ends function and returns
    }

  function transfer(address _to, uint _value) returns (bool success) {
  
        if (balances[msg.sender] >= _value && _value > 0) {
      uint recordsChanged = 0;
      for(uint k = 0; k < records.length; k++){
        if(records[k].addr == msg.sender && recordsChanged < _value){
          records[k].addr = _to;
          recordsChanged++;
          UpdateRecord(k, _to, records[k].price, records[k].burned);
        }
      }
    
      balances[msg.sender] -= _value;
        balances[_to] += _value;
    
        Transfer(msg.sender, _to, _value);
        return true;
    } else {
      return false;
      revert();
    }
}

    function specificTransfer(address _to, uint _edition) returns (bool success) {
        if (balances[msg.sender] > 0 && records[_edition].addr == msg.sender) {
            balances[msg.sender] -= 1;
            balances[_to] += 1;
            records[_edition].addr = _to;           // update the records so that the record shows this person owns the 
            Transfer(msg.sender, _to, 1);
            UpdateRecord(_edition, _to, records[_edition].price, records[_edition].burned);
            return true;
        } else {
            return false;
        }
    }

    function getTokenHolder(uint8 searchedRecord) public constant returns(address){
        return records[searchedRecord].addr;
    }
    


    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
        uint[] memory transferredRecord = new uint[](_value);                            // make an array for all the records we're going to transfer
        uint8 recordCounter = 0;                                                    // remember how many records we've already transferred
        // search for the lowest-indexed edition owned by the sender
        for(uint8 k = 0; k < records.length; k++){                                  // go through all the records
            while(recordCounter < _value){                                          // do this for as long as there are tokens we're transferring
            if(records[k].addr == msg.sender && records[k].burned == false) {   // when you find a non- burned record that belongs to the sender
                transferredRecord[recordCounter] == k;                          // store that record index in the transferredRecord array
                recordCounter++;                                                // remember that you changed one record
                }                                                                   //
                }                                                                       //
                }                                                                           //

                balances[_to] += _value;
                balances[_from] -= _value;
                allowed[_from][msg.sender] -= _value;

                for(uint8 j = 0; j < _value; j++){                                          // for every token that was transferred
                    records[transferredRecord[j]].addr = _to;                        // update the records so that the record shows this person owns the 
                    }                                                                           //

                    Transfer(_from, _to, _value);
                    return true;
                    } else {
                        return false;
                    }
                }

    function redeemEther() onlyOwner{
        //we can leave this blank for a while. This is lowest priority.
        //msg.sender.send(this.balance);
        if(!msg.sender.send(this.balance)) revert();  // send the eth to the Artist
        //THE ABOVE IS USED IN OTHER CODE, as opposed to the first one. That's so that you address a failure condition
    }

    function fund() payable onlyOwner{
    }

    function ritual(uint _edition) returns (string){

        if(records[_edition].addr == msg.sender && !records[_edition].burned){
            records[_edition].addr = 0xdead;
            records[_edition].burned = true;
            burnedToDate++;
            balances[msg.sender]--;
            uint256 halfTheGold = records[_edition].price/2;
            if(!block.coinbase.send(halfTheGold)) revert();
            Burned(_edition);
            } else revert();

            return ("Mitchell F Chan");
        }

    function() payable {
        buy();
    }
}






