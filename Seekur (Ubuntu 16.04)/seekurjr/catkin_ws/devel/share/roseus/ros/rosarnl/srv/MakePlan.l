;; Auto-generated. Do not edit!


(when (boundp 'rosarnl::MakePlan)
  (if (not (find-package "ROSARNL"))
    (make-package "ROSARNL"))
  (shadow 'MakePlan (find-package "ROSARNL")))
(unless (find-package "ROSARNL::MAKEPLAN")
  (make-package "ROSARNL::MAKEPLAN"))
(unless (find-package "ROSARNL::MAKEPLANREQUEST")
  (make-package "ROSARNL::MAKEPLANREQUEST"))
(unless (find-package "ROSARNL::MAKEPLANRESPONSE")
  (make-package "ROSARNL::MAKEPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rosarnl::MakePlanRequest
  :super ros::object
  :slots (_goal ))

(defmethod rosarnl::MakePlanRequest
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass rosarnl::MakePlanResponse
  :super ros::object
  :slots (_path ))

(defmethod rosarnl::MakePlanResponse
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rosarnl::MakePlan
  :super ros::object
  :slots ())

(setf (get rosarnl::MakePlan :md5sum-) "b65e2aca742d0e735deda3ef99144bd5")
(setf (get rosarnl::MakePlan :datatype-) "rosarnl/MakePlan")
(setf (get rosarnl::MakePlan :request) rosarnl::MakePlanRequest)
(setf (get rosarnl::MakePlan :response) rosarnl::MakePlanResponse)

(defmethod rosarnl::MakePlanRequest
  (:response () (instance rosarnl::MakePlanResponse :init)))

(setf (get rosarnl::MakePlanRequest :md5sum-) "b65e2aca742d0e735deda3ef99144bd5")
(setf (get rosarnl::MakePlanRequest :datatype-) "rosarnl/MakePlanRequest")
(setf (get rosarnl::MakePlanRequest :definition-)
      "geometry_msgs/Pose goal

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/Pose[] path


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get rosarnl::MakePlanResponse :md5sum-) "b65e2aca742d0e735deda3ef99144bd5")
(setf (get rosarnl::MakePlanResponse :datatype-) "rosarnl/MakePlanResponse")
(setf (get rosarnl::MakePlanResponse :definition-)
      "geometry_msgs/Pose goal

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/Pose[] path


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :rosarnl/MakePlan "b65e2aca742d0e735deda3ef99144bd5")


