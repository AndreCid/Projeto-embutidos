; Auto-generated. Do not edit!


(cl:in-package rosarnl-srv)


;//! \htmlinclude MakePlan-request.msg.html

(cl:defclass <MakePlan-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MakePlan-request (<MakePlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakePlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakePlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosarnl-srv:<MakePlan-request> is deprecated: use rosarnl-srv:MakePlan-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MakePlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-srv:goal-val is deprecated.  Use rosarnl-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakePlan-request>) ostream)
  "Serializes a message object of type '<MakePlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakePlan-request>) istream)
  "Deserializes a message object of type '<MakePlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakePlan-request>)))
  "Returns string type for a service object of type '<MakePlan-request>"
  "rosarnl/MakePlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakePlan-request)))
  "Returns string type for a service object of type 'MakePlan-request"
  "rosarnl/MakePlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakePlan-request>)))
  "Returns md5sum for a message object of type '<MakePlan-request>"
  "b65e2aca742d0e735deda3ef99144bd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakePlan-request)))
  "Returns md5sum for a message object of type 'MakePlan-request"
  "b65e2aca742d0e735deda3ef99144bd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakePlan-request>)))
  "Returns full string definition for message of type '<MakePlan-request>"
  (cl:format cl:nil "geometry_msgs/Pose goal~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakePlan-request)))
  "Returns full string definition for message of type 'MakePlan-request"
  (cl:format cl:nil "geometry_msgs/Pose goal~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakePlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakePlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakePlan-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude MakePlan-response.msg.html

(cl:defclass <MakePlan-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass MakePlan-response (<MakePlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakePlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakePlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosarnl-srv:<MakePlan-response> is deprecated: use rosarnl-srv:MakePlan-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MakePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosarnl-srv:path-val is deprecated.  Use rosarnl-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakePlan-response>) ostream)
  "Serializes a message object of type '<MakePlan-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakePlan-response>) istream)
  "Deserializes a message object of type '<MakePlan-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakePlan-response>)))
  "Returns string type for a service object of type '<MakePlan-response>"
  "rosarnl/MakePlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakePlan-response)))
  "Returns string type for a service object of type 'MakePlan-response"
  "rosarnl/MakePlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakePlan-response>)))
  "Returns md5sum for a message object of type '<MakePlan-response>"
  "b65e2aca742d0e735deda3ef99144bd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakePlan-response)))
  "Returns md5sum for a message object of type 'MakePlan-response"
  "b65e2aca742d0e735deda3ef99144bd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakePlan-response>)))
  "Returns full string definition for message of type '<MakePlan-response>"
  (cl:format cl:nil "geometry_msgs/Pose[] path~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakePlan-response)))
  "Returns full string definition for message of type 'MakePlan-response"
  (cl:format cl:nil "geometry_msgs/Pose[] path~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakePlan-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakePlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakePlan-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakePlan)))
  'MakePlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakePlan)))
  'MakePlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakePlan)))
  "Returns string type for a service object of type '<MakePlan>"
  "rosarnl/MakePlan")