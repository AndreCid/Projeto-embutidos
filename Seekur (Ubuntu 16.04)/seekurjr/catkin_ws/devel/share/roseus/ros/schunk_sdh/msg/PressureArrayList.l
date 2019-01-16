;; Auto-generated. Do not edit!


(when (boundp 'schunk_sdh::PressureArrayList)
  (if (not (find-package "SCHUNK_SDH"))
    (make-package "SCHUNK_SDH"))
  (shadow 'PressureArrayList (find-package "SCHUNK_SDH")))
(unless (find-package "SCHUNK_SDH::PRESSUREARRAYLIST")
  (make-package "SCHUNK_SDH::PRESSUREARRAYLIST"))

(in-package "ROS")
;;//! \htmlinclude PressureArrayList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass schunk_sdh::PressureArrayList
  :super ros::object
  :slots (_header _pressure_list ))

(defmethod schunk_sdh::PressureArrayList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pressure_list __pressure_list) (let (r) (dotimes (i 0) (push (instance schunk_sdh::PressureArray :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pressure_list __pressure_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pressure_list
   (&rest __pressure_list)
   (if (keywordp (car __pressure_list))
       (send* _pressure_list __pressure_list)
     (progn
       (if __pressure_list (setq _pressure_list (car __pressure_list)))
       _pressure_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; schunk_sdh/PressureArray[] _pressure_list
    (apply #'+ (send-all _pressure_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; schunk_sdh/PressureArray[] _pressure_list
     (write-long (length _pressure_list) s)
     (dolist (elem _pressure_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; schunk_sdh/PressureArray[] _pressure_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pressure_list (let (r) (dotimes (i n) (push (instance schunk_sdh::PressureArray :init) r)) r))
     (dolist (elem- _pressure_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get schunk_sdh::PressureArrayList :md5sum-) "3bc84d413df668b4cdc5d431fe62d2de")
(setf (get schunk_sdh::PressureArrayList :datatype-) "schunk_sdh/PressureArrayList")
(setf (get schunk_sdh::PressureArrayList :definition-)
      "Header header
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

")



(provide :schunk_sdh/PressureArrayList "3bc84d413df668b4cdc5d431fe62d2de")


