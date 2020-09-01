// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ModifyTextRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inputString = null;
    }
    else {
      if (initObj.hasOwnProperty('inputString')) {
        this.inputString = initObj.inputString
      }
      else {
        this.inputString = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModifyTextRequest
    // Serialize message field [inputString]
    bufferOffset = _serializer.string(obj.inputString, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModifyTextRequest
    let len;
    let data = new ModifyTextRequest(null);
    // Deserialize message field [inputString]
    data.inputString = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.inputString);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/ModifyTextRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '998e350d95d4a84f3e250cb220ede566';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    string inputString
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModifyTextRequest(null);
    if (msg.inputString !== undefined) {
      resolved.inputString = msg.inputString;
    }
    else {
      resolved.inputString = ''
    }

    return resolved;
    }
};

class ModifyTextResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modifiedString = null;
    }
    else {
      if (initObj.hasOwnProperty('modifiedString')) {
        this.modifiedString = initObj.modifiedString
      }
      else {
        this.modifiedString = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModifyTextResponse
    // Serialize message field [modifiedString]
    bufferOffset = _serializer.string(obj.modifiedString, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModifyTextResponse
    let len;
    let data = new ModifyTextResponse(null);
    // Deserialize message field [modifiedString]
    data.modifiedString = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.modifiedString);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/ModifyTextResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95b12ca9d74aa3ee6153e25f50ebb543';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    string modifiedString
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModifyTextResponse(null);
    if (msg.modifiedString !== undefined) {
      resolved.modifiedString = msg.modifiedString;
    }
    else {
      resolved.modifiedString = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ModifyTextRequest,
  Response: ModifyTextResponse,
  md5sum() { return '2ea50b9bce33ae6fad63d90c193917b0'; },
  datatype() { return 'beginner_tutorials/ModifyText'; }
};
