; Auto-generated. Do not edit!


(cl:in-package om_aiv_navigation-msg)


;//! \htmlinclude DoTaskFeedback.msg.html

(cl:defclass <DoTaskFeedback> (roslisp-msg-protocol:ros-message)
  ((received_data
    :reader received_data
    :initarg :received_data
    :type cl:string
    :initform ""))
)

(cl:defclass DoTaskFeedback (<DoTaskFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoTaskFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoTaskFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name om_aiv_navigation-msg:<DoTaskFeedback> is deprecated: use om_aiv_navigation-msg:DoTaskFeedback instead.")))

(cl:ensure-generic-function 'received_data-val :lambda-list '(m))
(cl:defmethod received_data-val ((m <DoTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader om_aiv_navigation-msg:received_data-val is deprecated.  Use om_aiv_navigation-msg:received_data instead.")
  (received_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoTaskFeedback>) ostream)
  "Serializes a message object of type '<DoTaskFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'received_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'received_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoTaskFeedback>) istream)
  "Deserializes a message object of type '<DoTaskFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'received_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'received_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoTaskFeedback>)))
  "Returns string type for a message object of type '<DoTaskFeedback>"
  "om_aiv_navigation/DoTaskFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoTaskFeedback)))
  "Returns string type for a message object of type 'DoTaskFeedback"
  "om_aiv_navigation/DoTaskFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoTaskFeedback>)))
  "Returns md5sum for a message object of type '<DoTaskFeedback>"
  "0db3bc19eeede9e4ee493e93f03da761")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoTaskFeedback)))
  "Returns md5sum for a message object of type 'DoTaskFeedback"
  "0db3bc19eeede9e4ee493e93f03da761")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoTaskFeedback>)))
  "Returns full string definition for message of type '<DoTaskFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string received_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoTaskFeedback)))
  "Returns full string definition for message of type 'DoTaskFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string received_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoTaskFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'received_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoTaskFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'DoTaskFeedback
    (cl:cons ':received_data (received_data msg))
))
