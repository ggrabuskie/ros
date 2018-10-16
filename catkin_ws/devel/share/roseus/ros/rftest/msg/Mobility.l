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
    ;; int8 _left
    1
    ;; int8 _right
    1
    ;; int8 _j1
    1
    ;; int8 _j2
    1
    ;; int8 _j3
    1
    ;; int8 _j4
    1
    ;; int8 _j51
    1
    ;; int8 _j52
    1
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _left
       (write-byte _left s)
     ;; int8 _right
       (write-byte _right s)
     ;; int8 _j1
       (write-byte _j1 s)
     ;; int8 _j2
       (write-byte _j2 s)
     ;; int8 _j3
       (write-byte _j3 s)
     ;; int8 _j4
       (write-byte _j4 s)
     ;; int8 _j51
       (write-byte _j51 s)
     ;; int8 _j52
       (write-byte _j52 s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _left 127) (setq _left (- _left 256)))
   ;; int8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _right 127) (setq _right (- _right 256)))
   ;; int8 _j1
     (setq _j1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _j1 127) (setq _j1 (- _j1 256)))
   ;; int8 _j2
     (setq _j2 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _j2 127) (setq _j2 (- _j2 256)))
   ;; int8 _j3
     (setq _j3 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _j3 127) (setq _j3 (- _j3 256)))
   ;; int8 _j4
     (setq _j4 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _j4 127) (setq _j4 (- _j4 256)))
   ;; int8 _j51
     (setq _j51 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _j51 127) (setq _j51 (- _j51 256)))
   ;; int8 _j52
     (setq _j52 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _j52 127) (setq _j52 (- _j52 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(setf (get rftest::Mobility :md5sum-) "6f38ad0aa86a3a54e1942f7cc4b3ee32")
(setf (get rftest::Mobility :datatype-) "rftest/Mobility")
(setf (get rftest::Mobility :definition-)
      "int8 left
int8 right
int8 j1
int8 j2
int8 j3
int8 j4
int8 j51
int8 j52
int8 mode

")



(provide :rftest/Mobility "6f38ad0aa86a3a54e1942f7cc4b3ee32")


