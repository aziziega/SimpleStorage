// kompile itu mengarah ke EVM atau Ethereum Virtual Machine
// untuk kompile dan deploy smart contract ke blockchain harus menggunakan solidity code
// L2 di jaringan Ethereum kaya
// Polygon, Arbitrum, Optimism, ZkSync dll

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    uint256 public favNumber; // Default value is 0

    struct Person {
        uint256 favNumber;
        string name;
    }

    // Dynamic array to store Person structs
    Person[] public listOfPeople;

    // mapping
    mapping(string => uint256) public nametoFavNumber;
    mapping(uint256 => string) public favNumbertoName;

    // Function to store a favorite number
    function store(uint256 _favNumber) public virtual {
        favNumber = _favNumber;
    } 

    // Function to retrieve the stored favorite number
    function retrieve() public view returns (uint256) {
        return favNumber;
    }

    // Function to add a new person to the list
    function addPerson(string memory _name, uint256 _favNumber) public {
        listOfPeople.push(Person(_favNumber, _name));
        nametoFavNumber[_name] = _favNumber;
        favNumbertoName[_favNumber] = _name;
    }
}


contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}