; Auto-generated. Do not edit!


(cl:in-package om_aiv_navigation-msg)


;//! \htmlinclude DockGoal.msg.html

(cl:defclass <DockGoal> (roslisp-msg-protocol:ros-message)
  ((goal_dock
    :reader goal_dock
    :initarg :goal_dock
    :type cl:string
    :initform ""))
)

(cl:defclass DockGoal (<DockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name om_aiv_navigation-msg:<DockGoal> is deprecated: use om_aiv_navigation-msg:DockGoal instead.")))

(cl:ensure-generic-function 'goal_dock-val :lambda-list '(m))
(cl:defmethod goal_dock-val ((m <DockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader om_aiv_navigation-msg:goal_dock-val is deprecated.  Use om_aiv_navigation-msg:goal_dock instead.")
  (goal_dock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockGoal>) ostream)
  "Serializes a message object of type '<DockGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_dock))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_dock))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockGoal>) istream)
  "Deserializes a message object of type '<DockGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_dock) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_dock) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockGoal>)))
  "Returns string type for a message object of type '<DockGoal>"
  "om_aiv_navigation/DockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockGoal)))
  "Returns string type for a message object of type 'DockGoal"
  "om_aiv_navigation/DockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockGoal>)))
  "Returns md5sum for a message object of type '<DockGoal>"
  "7f27dd24d1ef775e8d5a9739d7a2dc59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockGoal)))
  "Returns md5sum for a message object of type 'DockGoal"
  "7f27dd24d1ef775e8d5a9739d7a2dc59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockGoal>)))
  "Returns full string definition for message of type '<DockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string goal_dock~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockGoal)))
  "Returns full string definition for message of type 'DockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string goal_dock~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal_dock))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DockGoal
    (cl:cons ':goal_dock (goal_dock msg))
))
