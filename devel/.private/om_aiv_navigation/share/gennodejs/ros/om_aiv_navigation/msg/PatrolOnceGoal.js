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

class PatrolOnceGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_patrol = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_patrol')) {
        this.goal_patrol = initObj.goal_patrol
      }
      else {
        this.goal_patrol = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrolOnceGoal
    // Serialize message field [goal_patrol]
    bufferOffset = _serializer.string(obj.goal_patrol, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolOnceGoal
    let len;
    let data = new PatrolOnceGoal(null);
    // Deserialize message field [goal_patrol]
    data.goal_patrol = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.goal_patrol.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'om_aiv_navigation/PatrolOnceGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbc29a4d7d524ef00ce6e69ba1c4a816';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    string goal_patrol
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatrolOnceGoal(null);
    if (msg.goal_patrol !== undefined) {
      resolved.goal_patrol = msg.goal_patrol;
    }
    else {
      resolved.goal_patrol = ''
    }

    return resolved;
    }
};

module.exports = PatrolOnceGoal;
