// SPDX-License-Identifier: MIT
pragma solidity 0.6.6; 

    contract BEC_Target {
        mapping(address=> uint) balances;
        
    
        function batchTransfer(address[] memory _receivers, uint256 _value) public returns (bool) {
            uint cnt = _receivers.length;
            uint256 amount = uint256(cnt) * _value;
            require(cnt > 0 && cnt <= 20);
            require(_value > 0 && balances[msg.sender] >= amount);

            balances[msg.sender] = balances[msg.sender] - amount;
            for (uint i = 0; i < cnt; i++) {
                balances[_receivers[i]] = balances[_receivers[i]] + _value;
                // Transfer(msg.sender, _receivers[i], _value);
            }
            return true;
        }

        function getBalance() public view returns(uint){
            return balances[msg.sender];
        }
        
        function deposit() public payable{
            balances[msg.sender] += msg.value;
        }
    }