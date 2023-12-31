// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("Encounter")));
bytes32 constant EncounterTableId = _tableId;

struct EncounterData {
  bool exists;
  bytes32 monster;
  uint256 catchAttempts;
}

library Encounter {
  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](3);
    _schema[0] = SchemaType.BOOL;
    _schema[1] = SchemaType.BYTES32;
    _schema[2] = SchemaType.UINT256;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "player";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](3);
    fieldNames[0] = "exists";
    fieldNames[1] = "monster";
    fieldNames[2] = "catchAttempts";
  }

  /** Register the table's key schema, value schema, key names and value names */
  function register() internal {
    StoreSwitch.registerTable(_tableId, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table's key schema, value schema, key names and value names (using the specified store) */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get exists */
  function getExists(bytes32 player) internal view returns (bool exists) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0, getValueSchema());
    return (_toBool(uint8(Bytes.slice1(_blob, 0))));
  }

  /** Get exists (using the specified store) */
  function getExists(IStore _store, bytes32 player) internal view returns (bool exists) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0, getValueSchema());
    return (_toBool(uint8(Bytes.slice1(_blob, 0))));
  }

  /** Set exists */
  function setExists(bytes32 player, bool exists) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((exists)), getValueSchema());
  }

  /** Set exists (using the specified store) */
  function setExists(IStore _store, bytes32 player, bool exists) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((exists)), getValueSchema());
  }

  /** Get monster */
  function getMonster(bytes32 player) internal view returns (bytes32 monster) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1, getValueSchema());
    return (Bytes.slice32(_blob, 0));
  }

  /** Get monster (using the specified store) */
  function getMonster(IStore _store, bytes32 player) internal view returns (bytes32 monster) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1, getValueSchema());
    return (Bytes.slice32(_blob, 0));
  }

  /** Set monster */
  function setMonster(bytes32 player, bytes32 monster) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((monster)), getValueSchema());
  }

  /** Set monster (using the specified store) */
  function setMonster(IStore _store, bytes32 player, bytes32 monster) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((monster)), getValueSchema());
  }

  /** Get catchAttempts */
  function getCatchAttempts(bytes32 player) internal view returns (uint256 catchAttempts) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2, getValueSchema());
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get catchAttempts (using the specified store) */
  function getCatchAttempts(IStore _store, bytes32 player) internal view returns (uint256 catchAttempts) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2, getValueSchema());
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set catchAttempts */
  function setCatchAttempts(bytes32 player, uint256 catchAttempts) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    StoreSwitch.setField(_tableId, _keyTuple, 2, abi.encodePacked((catchAttempts)), getValueSchema());
  }

  /** Set catchAttempts (using the specified store) */
  function setCatchAttempts(IStore _store, bytes32 player, uint256 catchAttempts) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    _store.setField(_tableId, _keyTuple, 2, abi.encodePacked((catchAttempts)), getValueSchema());
  }

  /** Get the full data */
  function get(bytes32 player) internal view returns (EncounterData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getValueSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 player) internal view returns (EncounterData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getValueSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 player, bool exists, bytes32 monster, uint256 catchAttempts) internal {
    bytes memory _data = encode(exists, monster, catchAttempts);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data, getValueSchema());
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, bytes32 player, bool exists, bytes32 monster, uint256 catchAttempts) internal {
    bytes memory _data = encode(exists, monster, catchAttempts);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    _store.setRecord(_tableId, _keyTuple, _data, getValueSchema());
  }

  /** Set the full data using the data struct */
  function set(bytes32 player, EncounterData memory _table) internal {
    set(player, _table.exists, _table.monster, _table.catchAttempts);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 player, EncounterData memory _table) internal {
    set(_store, player, _table.exists, _table.monster, _table.catchAttempts);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (EncounterData memory _table) {
    _table.exists = (_toBool(uint8(Bytes.slice1(_blob, 0))));

    _table.monster = (Bytes.slice32(_blob, 1));

    _table.catchAttempts = (uint256(Bytes.slice32(_blob, 33)));
  }

  /** Tightly pack full data using this table's schema */
  function encode(bool exists, bytes32 monster, uint256 catchAttempts) internal pure returns (bytes memory) {
    return abi.encodePacked(exists, monster, catchAttempts);
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 player) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 player) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    StoreSwitch.deleteRecord(_tableId, _keyTuple, getValueSchema());
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 player) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = player;

    _store.deleteRecord(_tableId, _keyTuple, getValueSchema());
  }
}

function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}
