;; Auto-generated. Do not edit!


(when (boundp 'rosarnl::LoadMapFile)
  (if (not (find-package "ROSARNL"))
    (make-package "ROSARNL"))
  (shadow 'LoadMapFile (find-package "ROSARNL")))
(unless (find-package "ROSARNL::LOADMAPFILE")
  (make-package "ROSARNL::LOADMAPFILE"))
(unless (find-package "ROSARNL::LOADMAPFILEREQUEST")
  (make-package "ROSARNL::LOADMAPFILEREQUEST"))
(unless (find-package "ROSARNL::LOADMAPFILERESPONSE")
  (make-package "ROSARNL::LOADMAPFILERESPONSE"))

(in-package "ROS")





(defclass rosarnl::LoadMapFileRequest
  :super ros::object
  :slots (_filename ))

(defmethod rosarnl::LoadMapFileRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosarnl::LoadMapFileResponse
  :super ros::object
  :slots (_message ))

(defmethod rosarnl::LoadMapFileResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosarnl::LoadMapFile
  :super ros::object
  :slots ())

(setf (get rosarnl::LoadMapFile :md5sum-) "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(setf (get rosarnl::LoadMapFile :datatype-) "rosarnl/LoadMapFile")
(setf (get rosarnl::LoadMapFile :request) rosarnl::LoadMapFileRequest)
(setf (get rosarnl::LoadMapFile :response) rosarnl::LoadMapFileResponse)

(defmethod rosarnl::LoadMapFileRequest
  (:response () (instance rosarnl::LoadMapFileResponse :init)))

(setf (get rosarnl::LoadMapFileRequest :md5sum-) "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(setf (get rosarnl::LoadMapFileRequest :datatype-) "rosarnl/LoadMapFileRequest")
(setf (get rosarnl::LoadMapFileRequest :definition-)
      "string filename
---
string message

")

(setf (get rosarnl::LoadMapFileResponse :md5sum-) "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(setf (get rosarnl::LoadMapFileResponse :datatype-) "rosarnl/LoadMapFileResponse")
(setf (get rosarnl::LoadMapFileResponse :definition-)
      "string filename
---
string message

")



(provide :rosarnl/LoadMapFile "4de3d9cc11cc57aecc1e3b15cb59ccfc")


