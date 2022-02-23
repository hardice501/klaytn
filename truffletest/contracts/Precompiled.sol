pragma solidity >=0.4.22 <0.9.0;

contract Precompiled {
  event showbytes(bytes input);
  event showbytes32(bytes32 input);
  function callposeidon(bytes32[] memory data) public returns (bytes32 result) {
    uint256 len = data.length*32;
    assembly {
      let memPtr := mload(0x40)
        let success := call(gas(), 0x14, 0, add(data, 0x20), len, memPtr, 0x20)
        switch success
        case 0 {
          revert(0,0)
        } default {
          result := mload(memPtr)
        }
    }
    emit showbytes32(result);
  }
  function callmimc(bytes32[] memory data) public returns (bytes32 result) {
    uint256 len = data.length*32;
    assembly {
      let memPtr := mload(0x40)
        let success := call(gas(), 0x13, 0, add(data, 0x20), len, memPtr, 0x20)
        switch success
        case 0 {
          revert(0,0)
        } default {
          result := mload(memPtr)
        }
    }
    emit showbytes32(result);
  }
}