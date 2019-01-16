;; Auto-generated. Do not edit!


(when (boundp 'schunk_sdh::PressureArray)
  (if (not (find-package "SCHUNK_SDH"))
    (make-package "SCHUNK_SDH"))
  (shadow 'PressureArray (find-package "SCHUNK_SDH")))
(unless (find-package "SCHUNK_SDH::PRESSUREARRAY")
  (make-package "SCHUNK_SDH::PRESSUREARRAY"))

(in-package "ROS")
;;//! \htmlinclude PressureArray.msg.html


(defclass schunk_sdh::PressureArray
  :super ros::object
  :slots (_sensor_name _cells_x _cells_y _pressure ))

(defmethod schunk_sdh::PressureArray
  (:init
   (&key
    ((:sensor_name __sensor_name) "")
    ((:cells_x __cells_x) 0)
    ((:cells_y __cells_y) 0)
    ((:pressure __pressure) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _sensor_name (string __sensor_name))
   (setq _cells_x (round __cells_x))
   (setq _cells_y (round __cells_y))
   (setq _pressure __pressure)
   self)
  (:sensor_name
   (&optional __sensor_name)
   (if __sensor_name (setq _sensor_name __sensor_name)) _sensor_name)
  (:cells_x
   (&optional __cells_x)
   (if __cells_x (setq _cells_x __cells_x)) _cells_x)
  (:cells_y
   (&optional __cells_y)
   (if __cells_y (setq _cells_y __cells_y)) _cells_y)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:serialization-length
   ()
   (+
    ;; string _sensor_name
    4 (length _sensor_name)
    ;; uint16 _cells_x
    2
    ;; uint16 _cells_y
    2
    ;; float64[] _pressure
    (* 8    (length _pressure)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_name
       (write-long (length _sensor_name) s) (princ _sensor_name s)
     ;; uint16 _cells_x
       (write-word _cells_x s)
     ;; uint16 _cells_y
       (write-word _cells_y s)
     ;; float64[] _pressure
     (write-long (length _pressure) s)
     (dotimes (i (length _pressure))
       (sys::poke (elt _pressure i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _cells_x
     (setq _cells_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cells_y
     (setq _cells_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[] _pressure
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pressure (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pressure i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get schunk_sdh::PressureArray :md5sum-) "552b4f7037a43d9de82fe16651e48e29")
(setf (get schunk_sdh::PressureArray :datatype-) "schunk_sdh/PressureArray")
(setf (get schunk_sdh::PressureArray :definition-)
      "string sensor_name
uint16 cells_x
uint16 cells_y
float64[] pressure  # unit: Pascal (Pa)

")



(provide :schunk_sdh/PressureArray "552b4f7037a43d9de82fe16651e48e29")


