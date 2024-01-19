// Auto-generated. Do not edit!

// (in-package tugas4.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PhytagorasRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.komponenX = null;
      this.komponenY = null;
      this.komponenZ = null;
    }
    else {
      if (initObj.hasOwnProperty('komponenX')) {
        this.komponenX = initObj.komponenX
      }
      else {
        this.komponenX = 0.0;
      }
      if (initObj.hasOwnProperty('komponenY')) {
        this.komponenY = initObj.komponenY
      }
      else {
        this.komponenY = 0.0;
      }
      if (initObj.hasOwnProperty('komponenZ')) {
        this.komponenZ = initObj.komponenZ
      }
      else {
        this.komponenZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PhytagorasRequest
    // Serialize message field [komponenX]
    bufferOffset = _serializer.float64(obj.komponenX, buffer, bufferOffset);
    // Serialize message field [komponenY]
    bufferOffset = _serializer.float64(obj.komponenY, buffer, bufferOffset);
    // Serialize message field [komponenZ]
    bufferOffset = _serializer.float64(obj.komponenZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PhytagorasRequest
    let len;
    let data = new PhytagorasRequest(null);
    // Deserialize message field [komponenX]
    data.komponenX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [komponenY]
    data.komponenY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [komponenZ]
    data.komponenZ = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tugas4/PhytagorasRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5d4a6861923d554ddd71d7a4562fa32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 komponenX
    float64 komponenY
    float64 komponenZ
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PhytagorasRequest(null);
    if (msg.komponenX !== undefined) {
      resolved.komponenX = msg.komponenX;
    }
    else {
      resolved.komponenX = 0.0
    }

    if (msg.komponenY !== undefined) {
      resolved.komponenY = msg.komponenY;
    }
    else {
      resolved.komponenY = 0.0
    }

    if (msg.komponenZ !== undefined) {
      resolved.komponenZ = msg.komponenZ;
    }
    else {
      resolved.komponenZ = 0.0
    }

    return resolved;
    }
};

class PhytagorasResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.magnitude = null;
    }
    else {
      if (initObj.hasOwnProperty('magnitude')) {
        this.magnitude = initObj.magnitude
      }
      else {
        this.magnitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PhytagorasResponse
    // Serialize message field [magnitude]
    bufferOffset = _serializer.float64(obj.magnitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PhytagorasResponse
    let len;
    let data = new PhytagorasResponse(null);
    // Deserialize message field [magnitude]
    data.magnitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tugas4/PhytagorasResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3a902f9783110e2b8fe7c475e26788e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 magnitude
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PhytagorasResponse(null);
    if (msg.magnitude !== undefined) {
      resolved.magnitude = msg.magnitude;
    }
    else {
      resolved.magnitude = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: PhytagorasRequest,
  Response: PhytagorasResponse,
  md5sum() { return '55d1a215f43fd1f64eb105a505b172c4'; },
  datatype() { return 'tugas4/Phytagoras'; }
};
