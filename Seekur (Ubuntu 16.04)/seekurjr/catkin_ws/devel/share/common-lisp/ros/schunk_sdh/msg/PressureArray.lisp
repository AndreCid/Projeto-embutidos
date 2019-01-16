; Auto-generated. Do not edit!


(cl:in-package schunk_sdh-msg)


;//! \htmlinclude PressureArray.msg.html

(cl:defclass <PressureArray> (roslisp-msg-protocol:ros-message)
  ((sensor_name
    :reader sensor_name
    :initarg :sensor_name
    :type cl:string
    :initform "")
   (cells_x
    :reader cells_x
    :initarg :cells_x
    :type cl:fixnum
    :initform 0)
   (cells_y
    :reader cells_y
    :initarg :cells_y
    :type cl:fixnum
    :initform 0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PressureArray (<PressureArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PressureArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PressureArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_sdh-msg:<PressureArray> is deprecated: use schunk_sdh-msg:PressureArray instead.")))

(cl:ensure-generic-function 'sensor_name-val :lambda-list '(m))
(cl:defmethod sensor_name-val ((m <PressureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_sdh-msg:sensor_name-val is deprecated.  Use schunk_sdh-msg:sensor_name instead.")
  (sensor_name m))

(cl:ensure-generic-function 'cells_x-val :lambda-list '(m))
(cl:defmethod cells_x-val ((m <PressureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_sdh-msg:cells_x-val is deprecated.  Use schunk_sdh-msg:cells_x instead.")
  (cells_x m))

(cl:ensure-generic-function 'cells_y-val :lambda-list '(m))
(cl:defmethod cells_y-val ((m <PressureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_sdh-msg:cells_y-val is deprecated.  Use schunk_sdh-msg:cells_y instead.")
  (cells_y m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <PressureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_sdh-msg:pressure-val is deprecated.  Use schunk_sdh-msg:pressure instead.")
  (pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PressureArray>) ostream)
  "Serializes a message object of type '<PressureArray>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cells_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cells_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cells_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cells_y)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pressure))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PressureArray>) istream)
  "Deserializes a message object of type '<PressureArray>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cells_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cells_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cells_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cells_y)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pressure) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pressure)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PressureArray>)))
  "Returns string type for a message object of type '<PressureArray>"
  "schunk_sdh/PressureArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PressureArray)))
  "Returns string type for a message object of type 'PressureArray"
  "schunk_sdh/PressureArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PressureArray>)))
  "Returns md5sum for a message object of type '<PressureArray>"
  "552b4f7037a43d9de82fe16651e48e29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PressureArray)))
  "Returns md5sum for a message object of type 'PressureArray"
  "552b4f7037a43d9de82fe16651e48e29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PressureArray>)))
  "Returns full string definition for message of type '<PressureArray>"
  (cl:format cl:nil "string sensor_name~%uint16 cells_x~%uint16 cells_y~%float64[] pressure  # unit: Pascal (Pa)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PressureArray)))
  "Returns full string definition for message of type 'PressureArray"
  (cl:format cl:nil "string sensor_name~%uint16 cells_x~%uint16 cells_y~%float64[] pressure  # unit: Pascal (Pa)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PressureArray>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_name))
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pressure) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PressureArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PressureArray
    (cl:cons ':sensor_name (sensor_name msg))
    (cl:cons ':cells_x (cells_x msg))
    (cl:cons ':cells_y (cells_y msg))
    (cl:cons ':pressure (pressure msg))
))
