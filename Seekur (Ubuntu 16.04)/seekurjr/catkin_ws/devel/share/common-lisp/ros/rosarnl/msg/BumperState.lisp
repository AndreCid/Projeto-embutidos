; Auto-generated. Do not edit!


(cl:in-package rosarnl-msg)


;//! \htmlinclude BumperState.msg.html

(cl:defclass <BumperState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_bumpers
    :reader front_bumpers
    :initarg :front_bumpers
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (rear_bumpers
    :reader rear_bumpers
    :initarg :rear_bumpers
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass BumperState (<BumperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosarnl-msg:<BumperState> is deprecated: use rosarnl-msg:BumperState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BumperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-msg:header-val is deprecated.  Use rosarnl-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_bumpers-val :lambda-list '(m))
(cl:defmethod front_bumpers-val ((m <BumperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-msg:front_bumpers-val is deprecated.  Use rosarnl-msg:front_bumpers instead.")
  (front_bumpers m))

(cl:ensure-generic-function 'rear_bumpers-val :lambda-list '(m))
(cl:defmethod rear_bumpers-val ((m <BumperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-msg:rear_bumpers-val is deprecated.  Use rosarnl-msg:rear_bumpers instead.")
  (rear_bumpers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperState>) ostream)
  "Serializes a message object of type '<BumperState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'front_bumpers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'front_bumpers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rear_bumpers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'rear_bumpers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperState>) istream)
  "Deserializes a message object of type '<BumperState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'front_bumpers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'front_bumpers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rear_bumpers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rear_bumpers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperState>)))
  "Returns string type for a message object of type '<BumperState>"
  "rosarnl/BumperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperState)))
  "Returns string type for a message object of type 'BumperState"
  "rosarnl/BumperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperState>)))
  "Returns md5sum for a message object of type '<BumperState>"
  "f81947761ff7e166a3bbaf937b9869b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperState)))
  "Returns md5sum for a message object of type 'BumperState"
  "f81947761ff7e166a3bbaf937b9869b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperState>)))
  "Returns full string definition for message of type '<BumperState>"
  (cl:format cl:nil "Header header~%bool[] front_bumpers~%bool[] rear_bumpers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperState)))
  "Returns full string definition for message of type 'BumperState"
  (cl:format cl:nil "Header header~%bool[] front_bumpers~%bool[] rear_bumpers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'front_bumpers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rear_bumpers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperState>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperState
    (cl:cons ':header (header msg))
    (cl:cons ':front_bumpers (front_bumpers msg))
    (cl:cons ':rear_bumpers (rear_bumpers msg))
))
