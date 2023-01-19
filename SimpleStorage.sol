//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;
contract SimpleStorage{
    uint256 public myNumber =22;
    People public person =People({name:'Ian',favoriteNum:4});
    string public me = person.name;
    struct People{
        string name;
        uint256 favoriteNum;
    }
    People[] public people;

    function changeValue(uint256 favNum) public {
        myNumber =favNum;
    }
    function find() public view returns(uint256) {
        return myNumber;
    }
    function add() public pure returns(uint256){
        return 4+6;
    }
    function addPerson(string memory _name,uint256 _favoriteNumber) public {
    People  memory newPerson = People({name:_name,favoriteNum:_favoriteNumber});
    people.push(newPerson);

    }

}
//0xd9145CCE52D386f254917e481eB44e9943F39138z  