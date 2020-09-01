; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude ModifyText-request.msg.html

(cl:defclass <ModifyText-request> (roslisp-msg-protocol:ros-message)
  ((inputString
    :reader inputString
    :initarg :inputString
    :type cl:string
    :initform ""))
)

(cl:defclass ModifyText-request (<ModifyText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModifyText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModifyText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<ModifyText-request> is deprecated: use beginner_tutorials-srv:ModifyText-request instead.")))

(cl:ensure-generic-function 'inputString-val :lambda-list '(m))
(cl:defmethod inputString-val ((m <ModifyText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:inputString-val is deprecated.  Use beginner_tutorials-srv:inputString instead.")
  (inputString m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModifyText-request>) ostream)
  "Serializes a message object of type '<ModifyText-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'inputString))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'inputString))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModifyText-request>) istream)
  "Deserializes a message object of type '<ModifyText-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inputString) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'inputString) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModifyText-request>)))
  "Returns string type for a service object of type '<ModifyText-request>"
  "beginner_tutorials/ModifyTextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyText-request)))
  "Returns string type for a service object of type 'ModifyText-request"
  "beginner_tutorials/ModifyTextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModifyText-request>)))
  "Returns md5sum for a message object of type '<ModifyText-request>"
  "2ea50b9bce33ae6fad63d90c193917b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModifyText-request)))
  "Returns md5sum for a message object of type 'ModifyText-request"
  "2ea50b9bce33ae6fad63d90c193917b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModifyText-request>)))
  "Returns full string definition for message of type '<ModifyText-request>"
  (cl:format cl:nil "#request~%string inputString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModifyText-request)))
  "Returns full string definition for message of type 'ModifyText-request"
  (cl:format cl:nil "#request~%string inputString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModifyText-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'inputString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModifyText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModifyText-request
    (cl:cons ':inputString (inputString msg))
))
;//! \htmlinclude ModifyText-response.msg.html

(cl:defclass <ModifyText-response> (roslisp-msg-protocol:ros-message)
  ((modifiedString
    :reader modifiedString
    :initarg :modifiedString
    :type cl:string
    :initform ""))
)

(cl:defclass ModifyText-response (<ModifyText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModifyText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModifyText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<ModifyText-response> is deprecated: use beginner_tutorials-srv:ModifyText-response instead.")))

(cl:ensure-generic-function 'modifiedString-val :lambda-list '(m))
(cl:defmethod modifiedString-val ((m <ModifyText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:modifiedString-val is deprecated.  Use beginner_tutorials-srv:modifiedString instead.")
  (modifiedString m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModifyText-response>) ostream)
  "Serializes a message object of type '<ModifyText-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'modifiedString))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'modifiedString))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModifyText-response>) istream)
  "Deserializes a message object of type '<ModifyText-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modifiedString) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'modifiedString) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModifyText-response>)))
  "Returns string type for a service object of type '<ModifyText-response>"
  "beginner_tutorials/ModifyTextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyText-response)))
  "Returns string type for a service object of type 'ModifyText-response"
  "beginner_tutorials/ModifyTextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModifyText-response>)))
  "Returns md5sum for a message object of type '<ModifyText-response>"
  "2ea50b9bce33ae6fad63d90c193917b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModifyText-response)))
  "Returns md5sum for a message object of type 'ModifyText-response"
  "2ea50b9bce33ae6fad63d90c193917b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModifyText-response>)))
  "Returns full string definition for message of type '<ModifyText-response>"
  (cl:format cl:nil "#response~%string modifiedString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModifyText-response)))
  "Returns full string definition for message of type 'ModifyText-response"
  (cl:format cl:nil "#response~%string modifiedString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModifyText-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'modifiedString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModifyText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModifyText-response
    (cl:cons ':modifiedString (modifiedString msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModifyText)))
  'ModifyText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModifyText)))
  'ModifyText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyText)))
  "Returns string type for a service object of type '<ModifyText>"
  "beginner_tutorials/ModifyText")