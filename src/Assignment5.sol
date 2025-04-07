// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    // Declare a public unsigned integer variable `counter`
    uint public counter;

    // Declare a public boolean variable `isActive` and set it to true by default
    bool public isActive = true;

    // Declare a public mapping `userNames` to map addresses to user names
    mapping(address => string) public userNames;

    // Define a struct `User` with fields: `id`, `name`, and `wallet`
    struct User {
        uint id;
        string name;
        address wallet;
    }

    // Create a public array `users` to store all users
    User[] public users;

    // Constructor to initialize `isActive` to true when the contract is deployed
    constructor() {
        // `isActive` is already true by default
    }

    // Function to increment the `counter` by 1 for 5 iterations using a loop
    function incrementCounter() public {
        for (uint i = 0; i < 5; i++) {
            counter += 1;  // Increment the counter by 1
        }
    }

    // Function to toggle `isActive` between true and false
    function toggleActive() public {
        isActive = !isActive;  // Toggle the value of isActive
    }

    // Function to add a user to the `users` array and update the `userNames` mapping
    function addUser(uint id, string memory name, address wallet) public {
        users.push(User(id, name, wallet));  // Add the user to the array
        userNames[wallet] = name;  // Update the mapping with the address and name
    }

    // Function to get the total number of users in the `users` array
    function getUserCount() public view returns (uint) {
        return users.length;  // Return the number of users in the array
    }
}
