// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Solidity version
contract SimpleStroage {
    //FavoriteeNumber gets initialized to 0 if no value is given

    uint256 myFavoriteNumber ;

      // uint256[] listoffavoritenumbers
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic array
    Person [] public ListOfPeople;   

    mapping(string => uint256) public nameToFavoriteNumber;

    function store (uint256 _favoriteNumber) public {
     myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        ListOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
       
    }
}
