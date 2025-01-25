// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    //address[] public listOfsimpleStorageAddresses;
    SimpleStorage[] public listOfsimpleStorageContracts;

    function createSimpleSotrageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfsimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStotrageIndex, uint256 _newSimpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
        //SimpleStorage mySimpleStorage = SimpleStorage(listOfsimpleStorageAddresses[_simpleStotrageIndex]);
        //SimpleStorage(Address) TYPE-CASTING
        //mySimpleStorage.store(_newSimpleStorageNumber);
        SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStotrageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet (uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}