//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SimpleStorage} from"./SimpleStorage.sol";


contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name

    // SimpleStorage public simpleStorage;

    SimpleStorage[] public listOfSimpleStorageContracts;
    event ContractCreated(address contractAddress);

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
        // emit event
        emit ContractCreated(address(newSimpleStorageContract));
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        require(_simpleStorageIndex < listOfSimpleStorageContracts.length, "Invalid index");

        // address
        // ABI - Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
        
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        require(_simpleStorageIndex < listOfSimpleStorageContracts.length, "Invalid index");
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
    
}