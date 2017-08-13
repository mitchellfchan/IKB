//KLEIN v. 3.3
/*
TODO IN THIS VERSION:

-If buyer submits more ETH than there are tokens available, contract pays out all available IKB and returns change
-


FOR TESTING:

-Try to send more ETH than there are corresponding to the price of all IKB remaining.
    -Do you get the remaining IKB?
    -Do you get change?


*/

pragma solidity ^0.4.15;


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

contract owned {
    address public owner;

    function owned() {
        owner = msg.sender;
    }

    // This contract only defines a modifier but does not use
    // it - it will be used in derived contracts.
    // The function body is inserted where the special symbol
    // "_;" in the definition of a modifier appears.
    // This means that if the owner calls this function, the
    // function is executed and otherwise, an exception is
    // thrown.
    // http://solidity.readthedocs.io/en/develop/contracts.html#function-modifiers

    modifier onlyOwner {
        if (msg.sender != owner) revert();
        _;
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}

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

contract StandardToken is ERC20 {

    function transfer(address _to, uint256 _value) returns (bool success) {
      if (balances[msg.sender] >= _value && _value > 0) {
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
      } else {
        return false;
      }
    }

    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
        balances[_to] += _value;
        balances[_from] -= _value;
        allowed[_from][msg.sender] -= _value;
        Transfer(_from, _to, _value);
        return true;
      } else {
        return false;
      }
    }

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

    // mapping (address => uint256) public balanceOf;
    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;
}

contract Klein is StandardToken, SafeMath, owned {
    
    string public constant name = "Digital Zone of Immaterial Pictorial Sensibility";
    string public constant symbol = "IKB";
    uint8 public constant decimals = 0;
    uint256 public maxSupplyPossible;
    bool first = true;
    uint256 public saleStartTime;
    uint256 public initialPrice = 10**16;
   
    uint8 public currentSeries;
    
    uint8 public issuedToDate;
    uint8 public currentlyAvailable;
    uint8 public totalSold;
    uint8 public burnedToDate;
   
    
    // Each IBKSeries represents one of Klein's receipt books, or a series of issued tokens.
    struct IKBSeries {

        uint256 price;
        uint8 seriesSupply;
    }
    
    IKBSeries[8] public series;                             // An array of all 8 series
    
    
        /* Initializes contract with initial supply tokens to the creator of the contract */
        function Klein(uint256 _saleStartTime) {
            saleStartTime = _saleStartTime;
            currentSeries = 0;
            series[0] = IKBSeries(initialPrice, 31);            // the first series has unique values...
            for(uint i = 1; i < series.length; i++){                            // ...while the next 7 can be defined in a for loop
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
    
            return "Created Series";
        }
    
        function buy() payable returns (uint){
            //this function is probably OK
            uint amount = msg.value / series[currentSeries].price;      // calculates the number of tokens the sender will buy
            if(balances[this] == 0) revert();
            if(msg.value == 0) revert();
            if (balances[this] < amount && balances[this] > 1) {        // this section handles what happens if someone tries to buy more than the currently available supply
                uint256 receivable = safeMult(balances[this], series[currentSeries].price);
                uint256 returnable = msg.value - receivable;
                amount = balances[this];
                msg.sender.transfer(returnable);
            }
            if (balances[this] < amount) revert();                      // checks if it has enough to sell. Essentially a double-check after the last block of code
            balances[msg.sender] += amount;                              // adds the amount to buyer's balance
            balances[this] -= amount;                                   // subtracts amount from seller's balance
            Transfer(this, msg.sender, amount);                     // execute an event reflecting the change
            return amount;                                          // ends function and returns
        }
        
        function redeemEther() onlyOwner{
            //we can leave this blank for a while. This is lowest priority.
            //msg.sender.send(this.balance);
            if(!msg.sender.send(this.balance)) revert();  // send the eth to the Artist
            //THE ABOVE IS USED IN OTHER CODE, as opposed to the first one. That's so that you address a failure condition
        }
        
        function fund() payable onlyOwner{
        }
        
        function ritual() constant returns (string){
            
            return ("Klein");
            //any user can call this function
            //their token is destroyed
                    //totalBurned++
                    
            //we have a smart way of throwing away half the ETH the paid
                //how do we know how much ETH they paid???
                    //can we bind information to the token?
                    //research swarm
                    //when a purchaser buys a token, the 
        }
}
    
    
    



