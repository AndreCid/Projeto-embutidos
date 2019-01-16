// Auto-generated. Do not edit!

// (in-package schunk_sdh.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PressureArray = require('./PressureArray.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PressureArrayList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pressure_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pressure_list')) {
        this.pressure_list = initObj.pressure_list
      }
      else {
        this.pressure_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PressureArrayList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pressure_list]
    // Serialize the length for message field [pressure_list]
    bufferOffset = _serializer.uint32(obj.pressure_list.length, buffer, bufferOffset);
    obj.pressure_list.forEach((val) => {
      bufferOffset = PressureArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PressureArrayList
    let len;
    let data = new PressureArrayList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pressure_list]
    // Deserialize array length for message field [pressure_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pressure_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pressure_list[i] = PressureArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.pressure_list.forEach((val) => {
      length += PressureArray.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'schunk_sdh/PressureArrayList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bc84d413df668b4cdc5d431fe62d2de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    schunk_sdh/PressureArray[] pressure_list
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: schunk_sdh/PressureArray
    string sensor_name
    uint16 cells_x
    uint16 cells_y
    float64[] pressure  # unit: Pascal (Pa)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PressureArrayList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pressure_list !== undefined) {
      resolved.pressure_list = new Array(msg.pressure_list.length);
      for (let i = 0; i < resolved.pressure_list.length; ++i) {
        resolved.pressure_list[i] = PressureArray.Resolve(msg.pressure_list[i]);
      }
    }
    else {
      resolved.pressure_list = []
    }

    return resolved;
    }
};

module.exports = PressureArrayList;
