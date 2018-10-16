;; Auto-generated. Do not edit!


(when (boundp 'rftest::Mobility)
  (if (not (find-package "RFTEST"))
    (make-package "RFTEST"))
  (shadow 'Mobility (find-package "RFTEST")))
(unless (find-package "RFTEST::MOBILITY")
  (make-package "RFTEST::MOBILITY"))

(in-package "ROS")
;;//! \htmlinclude Mobility.msg.html


(defclass rftest::Mobility
  :super ros::object
  :slots (_left _right _j1 _j2 _j3 _j4 _j51 _j52 _mode ))

(defmethod rftest::Mobility
  (:init
   (&key
    ((:left __left) 0)
    ((:right __right) 0)
    ((:j1 __j1) 0)
    ((:j2 __j2) 0)
    ((:j3 __j3) 0)
    ((:j4 __j4) 0)
    ((:j51 __j51) 0)
    ((:j52 __j52) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _left (round __left))
   (setq _right (round __right))
   (setq _j1 (round __j1))
   (setq _j2 (round __j2))
   (setq _j3 (round __j3))
   (setq _j4 (round __j4))
   (setq _j51 (round __j51))
   (setq _j52 (round __j52))
   (setq _mode (round __mode))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:j1
   (&optional __j1)
   (if __j1 (setq _j1 __j1)) _j1)
  (:j2
   (&optional __j2)
   (if __j2 (setq _j2 __j2)) _j2)
  (:j3
   (&optional __j3)
   (if __j3 (setq _j3 __j3)) _j3)
  (:j4
   (&optional __j4)
   (if __j4 (setq _j4 __j4)) _j4)
  (:j51
   (&optional __j51)
   (if __j51 (setq _j51 __j51)) _j51)
  (:j52
   (&optional __j52)
   (if __j52 (setq _j52 __j52)) _j52)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _left
    4
    ;; int32 _right
    4
    ;; int32 _j1
    4
    ;; int32 _j2
    4
    ;; int32 _j3
    4
    ;; int32 _j4
    4
    ;; int32 _j51
    4
    ;; int32 _j52
    4
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _left
       (write-long _left s)
     ;; int32 _right
       (write-long _right s)
     ;; int32 _j1
       (write-long _j1 s)
     ;; int32 _j2
       (write-long _j2 s)
     ;; int32 _j3
       (write-long _j3 s)
     ;; int32 _j4
       (write-long _j4 s)
     ;; int32 _j51
       (write-long _j51 s)
     ;; int32 _j52
       (write-long _j52 s)
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _left
     (setq _left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right
     (setq _right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _j1
     (setq _j1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _j2
     (setq _j2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _j3
     (setq _j3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _j4
     (setq _j4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _j51
     (setq _j51 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _j52
     (setq _j52 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rftest::Mobility :md5sum-) "f33d1055a48448022b44b1ff8e17fe19")
(setf (get rftest::Mobility :datatype-) "rftest/Mobility")
(setf (get rftest::Mobility :definition-)
      "int32 left
int32 right
int32 j1
int32 j2
int32 j3
int32 j4
int32 j51
int32 j52
int32 mode

")



(provide :rftest/Mobility "f33d1055a48448022b44b1ff8e17fe19")


