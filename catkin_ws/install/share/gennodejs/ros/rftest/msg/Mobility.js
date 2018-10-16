// Auto-generated. Do not edit!

// (in-package rftest.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Mobility {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left = null;
      this.right = null;
      this.j1 = null;
      this.j2 = null;
      this.j3 = null;
      this.j4 = null;
      this.j51 = null;
      this.j52 = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('j1')) {
        this.j1 = initObj.j1
      }
      else {
        this.j1 = 0;
      }
      if (initObj.hasOwnProperty('j2')) {
        this.j2 = initObj.j2
      }
      else {
        this.j2 = 0;
      }
      if (initObj.hasOwnProperty('j3')) {
        this.j3 = initObj.j3
      }
      else {
        this.j3 = 0;
      }
      if (initObj.hasOwnProperty('j4')) {
        this.j4 = initObj.j4
      }
      else {
        this.j4 = 0;
      }
      if (initObj.hasOwnProperty('j51')) {
        this.j51 = initObj.j51
      }
      else {
        this.j51 = 0;
      }
      if (initObj.hasOwnProperty('j52')) {
        this.j52 = initObj.j52
      }
      else {
        this.j52 = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mobility
    // Serialize message field [left]
    bufferOffset = _serializer.int32(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.int32(obj.right, buffer, bufferOffset);
    // Serialize message field [j1]
    bufferOffset = _serializer.int32(obj.j1, buffer, bufferOffset);
    // Serialize message field [j2]
    bufferOffset = _serializer.int32(obj.j2, buffer, bufferOffset);
    // Serialize message field [j3]
    bufferOffset = _serializer.int32(obj.j3, buffer, bufferOffset);
    // Serialize message field [j4]
    bufferOffset = _serializer.int32(obj.j4, buffer, bufferOffset);
    // Serialize message field [j51]
    bufferOffset = _serializer.int32(obj.j51, buffer, bufferOffset);
    // Serialize message field [j52]
    bufferOffset = _serializer.int32(obj.j52, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mobility
    let len;
    let data = new Mobility(null);
    // Deserialize message field [left]
    data.left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [j1]
    data.j1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [j2]
    data.j2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [j3]
    data.j3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [j4]
    data.j4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [j51]
    data.j51 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [j52]
    data.j52 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rftest/Mobility';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f33d1055a48448022b44b1ff8e17fe19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 left
    int32 right
    int32 j1
    int32 j2
    int32 j3
    int32 j4
    int32 j51
    int32 j52
    int32 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mobility(null);
    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.j1 !== undefined) {
      resolved.j1 = msg.j1;
    }
    else {
      resolved.j1 = 0
    }

    if (msg.j2 !== undefined) {
      resolved.j2 = msg.j2;
    }
    else {
      resolved.j2 = 0
    }

    if (msg.j3 !== undefined) {
      resolved.j3 = msg.j3;
    }
    else {
      resolved.j3 = 0
    }

    if (msg.j4 !== undefined) {
      resolved.j4 = msg.j4;
    }
    else {
      resolved.j4 = 0
    }

    if (msg.j51 !== undefined) {
      resolved.j51 = msg.j51;
    }
    else {
      resolved.j51 = 0
    }

    if (msg.j52 !== undefined) {
      resolved.j52 = msg.j52;
    }
    else {
      resolved.j52 = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

module.exports = Mobility;
