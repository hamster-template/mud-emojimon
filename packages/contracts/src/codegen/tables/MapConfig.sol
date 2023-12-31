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

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("MapConfig")));
bytes32 constant MapConfigTableId = _tableId;

library MapConfig {
  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](0);

    return SchemaLib.encode(_schema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](3);
    _schema[0] = SchemaType.UINT32;
    _schema[1] = SchemaType.UINT32;
    _schema[2] = SchemaType.BYTES;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](0);
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](3);
    fieldNames[0] = "width";
    fieldNames[1] = "height";
    fieldNames[2] = "terrain";
  }

  /** Register the table's key schema, value schema, key names and value names */
  function register() internal {
    StoreSwitch.registerTable(_tableId, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table's key schema, value schema, key names and value names (using the specified store) */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get width */
  function getWidth() internal view returns (uint32 width) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0, getValueSchema());
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get width (using the specified store) */
  function getWidth(IStore _store) internal view returns (uint32 width) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0, getValueSchema());
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set width */
  function setWidth(uint32 width) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((width)), getValueSchema());
  }

  /** Set width (using the specified store) */
  function setWidth(IStore _store, uint32 width) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((width)), getValueSchema());
  }

  /** Get height */
  function getHeight() internal view returns (uint32 height) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1, getValueSchema());
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get height (using the specified store) */
  function getHeight(IStore _store) internal view returns (uint32 height) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1, getValueSchema());
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set height */
  function setHeight(uint32 height) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((height)), getValueSchema());
  }

  /** Set height (using the specified store) */
  function setHeight(IStore _store, uint32 height) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((height)), getValueSchema());
  }

  /** Get terrain */
  function getTerrain() internal view returns (bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2, getValueSchema());
    return (bytes(_blob));
  }

  /** Get terrain (using the specified store) */
  function getTerrain(IStore _store) internal view returns (bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2, getValueSchema());
    return (bytes(_blob));
  }

  /** Set terrain */
  function setTerrain(bytes memory terrain) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setField(_tableId, _keyTuple, 2, bytes((terrain)), getValueSchema());
  }

  /** Set terrain (using the specified store) */
  function setTerrain(IStore _store, bytes memory terrain) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.setField(_tableId, _keyTuple, 2, bytes((terrain)), getValueSchema());
  }

  /** Get the length of terrain */
  function lengthTerrain() internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 2, getValueSchema());
    unchecked {
      return _byteLength / 1;
    }
  }

  /** Get the length of terrain (using the specified store) */
  function lengthTerrain(IStore _store) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 2, getValueSchema());
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * Get an item of terrain
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemTerrain(uint256 _index) internal view returns (bytes memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        2,
        getValueSchema(),
        _index * 1,
        (_index + 1) * 1
      );
      return (bytes(_blob));
    }
  }

  /**
   * Get an item of terrain (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemTerrain(IStore _store, uint256 _index) internal view returns (bytes memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 2, getValueSchema(), _index * 1, (_index + 1) * 1);
      return (bytes(_blob));
    }
  }

  /** Push a slice to terrain */
  function pushTerrain(bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.pushToField(_tableId, _keyTuple, 2, bytes((_slice)), getValueSchema());
  }

  /** Push a slice to terrain (using the specified store) */
  function pushTerrain(IStore _store, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.pushToField(_tableId, _keyTuple, 2, bytes((_slice)), getValueSchema());
  }

  /** Pop a slice from terrain */
  function popTerrain() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.popFromField(_tableId, _keyTuple, 2, 1, getValueSchema());
  }

  /** Pop a slice from terrain (using the specified store) */
  function popTerrain(IStore _store) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.popFromField(_tableId, _keyTuple, 2, 1, getValueSchema());
  }

  /**
   * Update a slice of terrain at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateTerrain(uint256 _index, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 2, _index * 1, bytes((_slice)), getValueSchema());
    }
  }

  /**
   * Update a slice of terrain (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateTerrain(IStore _store, uint256 _index, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 2, _index * 1, bytes((_slice)), getValueSchema());
    }
  }

  /** Get the full data */
  function get() internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getValueSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store) internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getValueSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(uint32 width, uint32 height, bytes memory terrain) internal {
    bytes memory _data = encode(width, height, terrain);

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _keyTuple, _data, getValueSchema());
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, uint32 width, uint32 height, bytes memory terrain) internal {
    bytes memory _data = encode(width, height, terrain);

    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.setRecord(_tableId, _keyTuple, _data, getValueSchema());
  }

  /**
   * Decode the tightly packed blob using this table's schema.
   * Undefined behaviour for invalid blobs.
   */
  function decode(bytes memory _blob) internal pure returns (uint32 width, uint32 height, bytes memory terrain) {
    // 8 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 8));

    width = (uint32(Bytes.slice4(_blob, 0)));

    height = (uint32(Bytes.slice4(_blob, 4)));

    // Store trims the blob if dynamic fields are all empty
    if (_blob.length > 8) {
      // skip static data length + dynamic lengths word
      uint256 _start = 40;
      uint256 _end;
      unchecked {
        _end = 40 + _encodedLengths.atIndex(0);
      }
      terrain = (bytes(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
    }
  }

  /** Tightly pack full data using this table's schema */
  function encode(uint32 width, uint32 height, bytes memory terrain) internal pure returns (bytes memory) {
    PackedCounter _encodedLengths;
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = PackedCounterLib.pack(bytes(terrain).length);
    }

    return abi.encodePacked(width, height, _encodedLengths.unwrap(), bytes((terrain)));
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple() internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.deleteRecord(_tableId, _keyTuple, getValueSchema());
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    _store.deleteRecord(_tableId, _keyTuple, getValueSchema());
  }
}
