// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";

//is inherits the class so basically class B is class A :: class B extends class A
contract AddFiveStorage is SimpleStorage{
    //+5
    // to override: virtual and override
    // Make overridable function as 'virtual' and the overridden function as 'override'
    function store(uint256 _newNumber) public override {
        myfavNumber = _newNumber + 5;
    }
}