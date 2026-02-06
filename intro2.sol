// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Solidity version
contract SimpleStroage {
    //FavoriteeNumber gets initialized to 0 if no value is given

    uint256 public myFavoriteNumber ;

      // uint256[] listoffavoritenumbers
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person public pat = Person({favoriteNumber: 7, name : "Pat"});
    Person public mariah = Person({favoriteNumber: 7, name : "Mariah"});
    Person public Jon = Person({favoriteNumber: 7, name : "Jon"});

    function store (uint256 _favoriteNumber) public {
     myFavoriteNumber = _favoriteNumber;
     myFavoriteNumber = myFavoriteNumber + 1;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
