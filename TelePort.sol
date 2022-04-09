// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract Demo {

    string public transportCompany;
    string public CusTomer;

    struct Conosament {
        string customer;
        string trCompany;
        uint timestamp;
        string message;
        uint countActions;
    }

    struct status {
        uint totalActions;
        mapping(uint => Conosament) stat;
    }

    mapping(string => status) public countA;

    function giveTC(string memory TrC) public {
        transportCompany = TrC;
    }

    function giveCustomer(string memory Cons) public {
        CusTomer = Cons;
    }

    function getDB(string memory comp, uint _index) public view returns(Conosament memory) {
        return countA[comp].stat[_index];
    }

    function sendTC(string memory message) public payable {
        countA[CusTomer].totalActions++;
        uint actNum = countA[CusTomer].totalActions;
        
        Conosament memory newPayment = Conosament(
            CusTomer,
            transportCompany,
            block.timestamp,
            message,
            actNum
        );
    }
}