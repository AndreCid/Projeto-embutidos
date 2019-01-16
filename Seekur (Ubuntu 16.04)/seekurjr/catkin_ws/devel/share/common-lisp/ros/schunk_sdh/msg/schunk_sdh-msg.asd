
(cl:in-package :asdf)

(defsystem "schunk_sdh-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PressureArray" :depends-on ("_package_PressureArray"))
    (:file "_package_PressureArray" :depends-on ("_package"))
    (:file "PressureArrayList" :depends-on ("_package_PressureArrayList"))
    (:file "_package_PressureArrayList" :depends-on ("_package"))
    (:file "TactileMatrix" :depends-on ("_package_TactileMatrix"))
    (:file "_package_TactileMatrix" :depends-on ("_package"))
    (:file "TactileSensor" :depends-on ("_package_TactileSensor"))
    (:file "_package_TactileSensor" :depends-on ("_package"))
    (:file "TemperatureArray" :depends-on ("_package_TemperatureArray"))
    (:file "_package_TemperatureArray" :depends-on ("_package"))
  ))