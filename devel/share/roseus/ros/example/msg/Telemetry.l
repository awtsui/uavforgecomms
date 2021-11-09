;; Auto-generated. Do not edit!


(when (boundp 'example::Telemetry)
  (if (not (find-package "EXAMPLE"))
    (make-package "EXAMPLE"))
  (shadow 'Telemetry (find-package "EXAMPLE")))
(unless (find-package "EXAMPLE::TELEMETRY")
  (make-package "EXAMPLE::TELEMETRY"))

(in-package "ROS")
;;//! \htmlinclude Telemetry.msg.html


(defclass example::Telemetry
  :super ros::object
  :slots (_x _y _z _alt ))

(defmethod example::Telemetry
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:alt __alt) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _alt (round __alt))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _z
    4
    ;; int32 _alt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _z
       (write-long _z s)
     ;; int32 _alt
       (write-long _alt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alt
     (setq _alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get example::Telemetry :md5sum-) "1a58464c5d1a0ed951c83d294f61a945")
(setf (get example::Telemetry :datatype-) "example/Telemetry")
(setf (get example::Telemetry :definition-)
      "int32 x
int32 y
int32 z
int32 alt


")



(provide :example/Telemetry "1a58464c5d1a0ed951c83d294f61a945")


