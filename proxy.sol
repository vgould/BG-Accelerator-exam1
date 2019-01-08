// implement a proxy contract that accepts any function call and forwards it to a target contract.
// The function signatures/paramaters needed are provided but you will need to create your own state variables
pragma solidity ^0.4.24;

contract Proxy {
    address public target;
    bytes data;

    constructor(address _target) {
        target = _target;
    }

    function() {
        data = msg.data;
    }

    function execute() returns (bool) {
        return target.call(data);
    }
}