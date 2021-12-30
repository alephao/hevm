// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import { DSTest } from "ds-test/test.sol";
import { Hevm } from "./Hevm.sol";

contract HevmExampleTest is Hevm, DSTest {
  function testDeal() public {
    address usr = 0x000000000000000000000000000000000000dEaD;
    hevm.deal(usr, 69420 ether);
    assertEq(usr.balance, 69420 ether);
  }
}