// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        // require statement
        require(_newValue > 0, "Value must be greater than 0");

        // assert statement
        assert(_newValue != value);

        // revert statement
        if (_newValue == 42) {
            revert("Value cannot be 42");
        }

        value = _newValue;
    }
}
