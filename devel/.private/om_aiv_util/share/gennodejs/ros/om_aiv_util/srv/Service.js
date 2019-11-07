// Auto-generated. Do not edit!

// (in-package om_aiv_util.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceRequest
    // Serialize message field [a]
    bufferOffset = _serializer.string(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceRequest
    let len;
    let data = new ServiceRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.a.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'om_aiv_util/ServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cec2f53f86620c7bb01476cbe41b2fae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = ''
    }

    return resolved;
    }
};

class ServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device = null;
    }
    else {
      if (initObj.hasOwnProperty('device')) {
        this.device = initObj.device
      }
      else {
        this.device = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceResponse
    // Serialize message field [device]
    bufferOffset = _serializer.string(obj.device, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceResponse
    let len;
    let data = new ServiceResponse(null);
    // Deserialize message field [device]
    data.device = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.device.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'om_aiv_util/ServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25b143d1069c7861320973824c82b9d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string device
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceResponse(null);
    if (msg.device !== undefined) {
      resolved.device = msg.device;
    }
    else {
      resolved.device = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceRequest,
  Response: ServiceResponse,
  md5sum() { return '9965534556d6f239219ba39e543ce36b'; },
  datatype() { return 'om_aiv_util/Service'; }
};
