// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract RecAreaCalculator {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function calculateArea(uint256 length, uint256 breadth) public view returns (uint256) {
        require( msg.sender == owner, "Sorry stranger, Only owners have rights to calculate the area" );
      
        assert(length > 0 && breadth > 0);
        uint256 area = length * breadth;

        if (area / length != breadth) {
            revert( "Error: values of length and breadth are wrong");
        }

        return area;
    }
}
