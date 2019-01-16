; Auto-generated. Do not edit!


(cl:in-package rosarnl-srv)


;//! \htmlinclude LoadMapFile-request.msg.html

(cl:defclass <LoadMapFile-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass LoadMapFile-request (<LoadMapFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMapFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMapFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosarnl-srv:<LoadMapFile-request> is deprecated: use rosarnl-srv:LoadMapFile-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <LoadMapFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-srv:filename-val is deprecated.  Use rosarnl-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMapFile-request>) ostream)
  "Serializes a message object of type '<LoadMapFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMapFile-request>) istream)
  "Deserializes a message object of type '<LoadMapFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMapFile-request>)))
  "Returns string type for a service object of type '<LoadMapFile-request>"
  "rosarnl/LoadMapFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMapFile-request)))
  "Returns string type for a service object of type 'LoadMapFile-request"
  "rosarnl/LoadMapFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMapFile-request>)))
  "Returns md5sum for a message object of type '<LoadMapFile-request>"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMapFile-request)))
  "Returns md5sum for a message object of type 'LoadMapFile-request"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMapFile-request>)))
  "Returns full string definition for message of type '<LoadMapFile-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMapFile-request)))
  "Returns full string definition for message of type 'LoadMapFile-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMapFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMapFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMapFile-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude LoadMapFile-response.msg.html

(cl:defclass <LoadMapFile-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass LoadMapFile-response (<LoadMapFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMapFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMapFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosarnl-srv:<LoadMapFile-response> is deprecated: use rosarnl-srv:LoadMapFile-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LoadMapFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-srv:message-val is deprecated.  Use rosarnl-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMapFile-response>) ostream)
  "Serializes a message object of type '<LoadMapFile-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMapFile-response>) istream)
  "Deserializes a message object of type '<LoadMapFile-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMapFile-response>)))
  "Returns string type for a service object of type '<LoadMapFile-response>"
  "rosarnl/LoadMapFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMapFile-response)))
  "Returns string type for a service object of type 'LoadMapFile-response"
  "rosarnl/LoadMapFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMapFile-response>)))
  "Returns md5sum for a message object of type '<LoadMapFile-response>"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMapFile-response)))
  "Returns md5sum for a message object of type 'LoadMapFile-response"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMapFile-response>)))
  "Returns full string definition for message of type '<LoadMapFile-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMapFile-response)))
  "Returns full string definition for message of type 'LoadMapFile-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMapFile-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMapFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMapFile-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadMapFile)))
  'LoadMapFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadMapFile)))
  'LoadMapFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMapFile)))
  "Returns string type for a service object of type '<LoadMapFile>"
  "rosarnl/LoadMapFile")