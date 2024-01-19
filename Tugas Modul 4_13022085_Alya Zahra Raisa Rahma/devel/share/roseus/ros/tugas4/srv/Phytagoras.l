;; Auto-generated. Do not edit!


(when (boundp 'tugas4::Phytagoras)
  (if (not (find-package "TUGAS4"))
    (make-package "TUGAS4"))
  (shadow 'Phytagoras (find-package "TUGAS4")))
(unless (find-package "TUGAS4::PHYTAGORAS")
  (make-package "TUGAS4::PHYTAGORAS"))
(unless (find-package "TUGAS4::PHYTAGORASREQUEST")
  (make-package "TUGAS4::PHYTAGORASREQUEST"))
(unless (find-package "TUGAS4::PHYTAGORASRESPONSE")
  (make-package "TUGAS4::PHYTAGORASRESPONSE"))

(in-package "ROS")





(defclass tugas4::PhytagorasRequest
  :super ros::object
  :slots (_komponenX _komponenY _komponenZ ))

(defmethod tugas4::PhytagorasRequest
  (:init
   (&key
    ((:komponenX __komponenX) 0.0)
    ((:komponenY __komponenY) 0.0)
    ((:komponenZ __komponenZ) 0.0)
    )
   (send-super :init)
   (setq _komponenX (float __komponenX))
   (setq _komponenY (float __komponenY))
   (setq _komponenZ (float __komponenZ))
   self)
  (:komponenX
   (&optional __komponenX)
   (if __komponenX (setq _komponenX __komponenX)) _komponenX)
  (:komponenY
   (&optional __komponenY)
   (if __komponenY (setq _komponenY __komponenY)) _komponenY)
  (:komponenZ
   (&optional __komponenZ)
   (if __komponenZ (setq _komponenZ __komponenZ)) _komponenZ)
  (:serialization-length
   ()
   (+
    ;; float64 _komponenX
    8
    ;; float64 _komponenY
    8
    ;; float64 _komponenZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _komponenX
       (sys::poke _komponenX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenY
       (sys::poke _komponenY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenZ
       (sys::poke _komponenZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _komponenX
     (setq _komponenX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenY
     (setq _komponenY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenZ
     (setq _komponenZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tugas4::PhytagorasResponse
  :super ros::object
  :slots (_magnitude ))

(defmethod tugas4::PhytagorasResponse
  (:init
   (&key
    ((:magnitude __magnitude) 0.0)
    )
   (send-super :init)
   (setq _magnitude (float __magnitude))
   self)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; float64 _magnitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _magnitude
     (setq _magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tugas4::Phytagoras
  :super ros::object
  :slots ())

(setf (get tugas4::Phytagoras :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get tugas4::Phytagoras :datatype-) "tugas4/Phytagoras")
(setf (get tugas4::Phytagoras :request) tugas4::PhytagorasRequest)
(setf (get tugas4::Phytagoras :response) tugas4::PhytagorasResponse)

(defmethod tugas4::PhytagorasRequest
  (:response () (instance tugas4::PhytagorasResponse :init)))

(setf (get tugas4::PhytagorasRequest :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get tugas4::PhytagorasRequest :datatype-) "tugas4/PhytagorasRequest")
(setf (get tugas4::PhytagorasRequest :definition-)
      "float64 komponenX
float64 komponenY
float64 komponenZ
---
float64 magnitude

")

(setf (get tugas4::PhytagorasResponse :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get tugas4::PhytagorasResponse :datatype-) "tugas4/PhytagorasResponse")
(setf (get tugas4::PhytagorasResponse :definition-)
      "float64 komponenX
float64 komponenY
float64 komponenZ
---
float64 magnitude

")



(provide :tugas4/Phytagoras "55d1a215f43fd1f64eb105a505b172c4")


