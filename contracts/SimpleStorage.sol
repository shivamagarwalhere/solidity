//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //stating our version; cap means anything latest post this version as well

contract SimpleStorage{ //contract is just like class in oops
    uint256 public myfavNumber; //default is 0
    //visibility by default is internal

    //LIST: uint256[] listOfNums;

    struct Person{
        uint favNumber;
        string name;
    }

    Person public myFriend = Person(7, "Yash");

    //dynamic array
    Person[] public listofPeople;
    //static array
    Person[3] public staticListofPeople;

    //shivam -> 420
    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favNumber) public virtual {
        myfavNumber = _favNumber;
    }
 
    //function marked view means just read state from the blockchain (disallow modification of state)
    //function marked pure disallows reading, modification of variables in storage. ex return a costant instead of variable.
    function retrieve() public view returns(uint256){
        return myfavNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        listofPeople.push(Person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }

}
