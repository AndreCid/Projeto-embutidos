// Auto-generated. Do not edit!

// (in-package schunk_sdh.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PressureArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_name = null;
      this.cells_x = null;
      this.cells_y = null;
      this.pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_name')) {
        this.sensor_name = initObj.sensor_name
      }
      else {
        this.sensor_name = '';
      }
      if (initObj.hasOwnProperty('cells_x')) {
        this.cells_x = initObj.cells_x
      }
      else {
        this.cells_x = 0;
      }
      if (initObj.hasOwnProperty('cells_y')) {
        this.cells_y = initObj.cells_y
      }
      else {
        this.cells_y = 0;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PressureArray
    // Serialize message field [sensor_name]
    bufferOffset = _serializer.string(obj.sensor_name, buffer, bufferOffset);
    // Serialize message field [cells_x]
    bufferOffset = _serializer.uint16(obj.cells_x, buffer, bufferOffset);
    // Serialize message field [cells_y]
    bufferOffset = _serializer.uint16(obj.cells_y, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _arraySerializer.float64(obj.pressure, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PressureArray
    let len;
    let data = new PressureArray(null);
    // Deserialize message field [sensor_name]
    data.sensor_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cells_x]
    data.cells_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cells_y]
    data.cells_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensor_name.length;
    length += 8 * object.pressure.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'schunk_sdh/PressureArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '552b4f7037a43d9de82fe16651e48e29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PressureArray(null);
    if (msg.sensor_name !== undefined) {
      resolved.sensor_name = msg.sensor_name;
    }
    else {
      resolved.sensor_name = ''
    }

    if (msg.cells_x !== undefined) {
      resolved.cells_x = msg.cells_x;
    }
    else {
      resolved.cells_x = 0
    }

    if (msg.cells_y !== undefined) {
      resolved.cells_y = msg.cells_y;
    }
    else {
      resolved.cells_y = 0
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = []
    }

    return resolved;
    }
};

module.exports = PressureArray;
