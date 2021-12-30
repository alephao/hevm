# hevm

Easy to use forge lib with the HEVM cheatcodes contract.

Docs for HEVM are here: https://github.com/gakonst/foundry/tree/master/forge

> Note: I literally just copied the interface in forge docs and added to a contract, I was copy-pasting this code manually every time and decided to do this lib instead, maybe it helps you.

### Getting Started

First install the lib in your forge project

```
forge install alephao/hevm
```

Then add `Hevm` to your test contract and `hevm` property will be available for you to use.

```solidity
import { Hevm } from "hevm/Hevm.sol";

contract HevmExampleTest is Hevm, DSTest {
  function testDeal() public {
    address usr = 0x000000000000000000000000000000000000dEaD;
    hevm.deal(usr, 69420 ether);
    assertEq(usr.balance, 69420 ether);
  }
}
```