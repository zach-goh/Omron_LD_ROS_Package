; Auto-generated. Do not edit!


(cl:in-package om_aiv_navigation-msg)


;//! \htmlinclude DoTaskResult.msg.html

(cl:defclass <DoTaskResult> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass DoTaskResult (<DoTaskResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoTaskResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoTaskResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name om_aiv_navigation-msg:<DoTaskResult> is deprecated: use om_aiv_navigation-msg:DoTaskResult instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DoTaskResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader om_aiv_navigation-msg:status-val is deprecated.  Use om_aiv_navigation-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoTaskResult>) ostream)
  "Serializes a message object of type '<DoTaskResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoTaskResult>) istream)
  "Deserializes a message object of type '<DoTaskResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoTaskResult>)))
  "Returns string type for a message object of type '<DoTaskResult>"
  "om_aiv_navigation/DoTaskResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoTaskResult)))
  "Returns string type for a message object of type 'DoTaskResult"
  "om_aiv_navigation/DoTaskResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoTaskResult>)))
  "Returns md5sum for a message object of type '<DoTaskResult>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoTaskResult)))
  "Returns md5sum for a message object of type 'DoTaskResult"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoTaskResult>)))
  "Returns full string definition for message of type '<DoTaskResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoTaskResult)))
  "Returns full string definition for message of type 'DoTaskResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoTaskResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoTaskResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DoTaskResult
    (cl:cons ':status (status msg))
))
