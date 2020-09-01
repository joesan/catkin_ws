;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::ModifyText)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'ModifyText (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::MODIFYTEXT")
  (make-package "BEGINNER_TUTORIALS::MODIFYTEXT"))
(unless (find-package "BEGINNER_TUTORIALS::MODIFYTEXTREQUEST")
  (make-package "BEGINNER_TUTORIALS::MODIFYTEXTREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::MODIFYTEXTRESPONSE")
  (make-package "BEGINNER_TUTORIALS::MODIFYTEXTRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::ModifyTextRequest
  :super ros::object
  :slots (_inputString ))

(defmethod beginner_tutorials::ModifyTextRequest
  (:init
   (&key
    ((:inputString __inputString) "")
    )
   (send-super :init)
   (setq _inputString (string __inputString))
   self)
  (:inputString
   (&optional __inputString)
   (if __inputString (setq _inputString __inputString)) _inputString)
  (:serialization-length
   ()
   (+
    ;; string _inputString
    4 (length _inputString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _inputString
       (write-long (length _inputString) s) (princ _inputString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _inputString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _inputString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::ModifyTextResponse
  :super ros::object
  :slots (_modifiedString ))

(defmethod beginner_tutorials::ModifyTextResponse
  (:init
   (&key
    ((:modifiedString __modifiedString) "")
    )
   (send-super :init)
   (setq _modifiedString (string __modifiedString))
   self)
  (:modifiedString
   (&optional __modifiedString)
   (if __modifiedString (setq _modifiedString __modifiedString)) _modifiedString)
  (:serialization-length
   ()
   (+
    ;; string _modifiedString
    4 (length _modifiedString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _modifiedString
       (write-long (length _modifiedString) s) (princ _modifiedString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _modifiedString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modifiedString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::ModifyText
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::ModifyText :md5sum-) "2ea50b9bce33ae6fad63d90c193917b0")
(setf (get beginner_tutorials::ModifyText :datatype-) "beginner_tutorials/ModifyText")
(setf (get beginner_tutorials::ModifyText :request) beginner_tutorials::ModifyTextRequest)
(setf (get beginner_tutorials::ModifyText :response) beginner_tutorials::ModifyTextResponse)

(defmethod beginner_tutorials::ModifyTextRequest
  (:response () (instance beginner_tutorials::ModifyTextResponse :init)))

(setf (get beginner_tutorials::ModifyTextRequest :md5sum-) "2ea50b9bce33ae6fad63d90c193917b0")
(setf (get beginner_tutorials::ModifyTextRequest :datatype-) "beginner_tutorials/ModifyTextRequest")
(setf (get beginner_tutorials::ModifyTextRequest :definition-)
      "#request
string inputString
---
#response
string modifiedString
")

(setf (get beginner_tutorials::ModifyTextResponse :md5sum-) "2ea50b9bce33ae6fad63d90c193917b0")
(setf (get beginner_tutorials::ModifyTextResponse :datatype-) "beginner_tutorials/ModifyTextResponse")
(setf (get beginner_tutorials::ModifyTextResponse :definition-)
      "#request
string inputString
---
#response
string modifiedString
")



(provide :beginner_tutorials/ModifyText "2ea50b9bce33ae6fad63d90c193917b0")


