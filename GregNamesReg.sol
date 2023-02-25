pragma solidity ^0.8.0;

contract NamesRegistry{

    mapping(address => string) public names;

    function register( string memory _name) public{
        names[msg.sender] = _name;
    }

    function retrieve(address _address) public view returns (string memory) {
        // require(StringUtils, "No name available");
        return(names[_address]);
    }
}