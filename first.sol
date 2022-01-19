pragma solidity ^0.5.0;
contract license{

//Product license 
    uint8 licenseNumber;
    string authority;
    uint8 authorityCode;
    uint8[] licenseNUmbers;
    mapping(uint8 => string) Consumer;
    
    function CreateLicense(uint8  licenseNo,string memory authorityName) public returns(bool){
         Consumer[licenseNo] = authorityName;
        return true;
    }

    function FindLicense(uint8 licenseNo) public view returns(string memory)
    {
        return Consumer[licenseNo];
    }
}