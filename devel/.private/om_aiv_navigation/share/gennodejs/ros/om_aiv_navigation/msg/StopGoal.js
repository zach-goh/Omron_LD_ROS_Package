// Auto-generated. Do not edit!

// (in-package om_aiv_navigation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StopGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_stop = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_stop')) {
        this.goal_stop = initObj.goal_stop
      }
      else {
        this.goal_stop = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopGoal
    // Serialize message field [goal_stop]
    bufferOffset = _serializer.string(obj.goal_stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopGoal
    let len;
    let data = new StopGoal(null);
    // Deserialize message field [goal_stop]
    data.goal_stop = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.goal_stop.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'om_aiv_navigation/StopGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb7b95c39be20820c1c7a2575bd9c5d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    string goal_stop
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopGoal(null);
    if (msg.goal_stop !== undefined) {
      resolved.goal_stop = msg.goal_stop;
    }
    else {
      resolved.goal_stop = ''
    }

    return resolved;
    }
};

module.exports = StopGoal;
