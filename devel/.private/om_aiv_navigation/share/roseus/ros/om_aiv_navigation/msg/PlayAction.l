;; Auto-generated. Do not edit!


(when (boundp 'om_aiv_navigation::PlayAction)
  (if (not (find-package "OM_AIV_NAVIGATION"))
    (make-package "OM_AIV_NAVIGATION"))
  (shadow 'PlayAction (find-package "OM_AIV_NAVIGATION")))
(unless (find-package "OM_AIV_NAVIGATION::PLAYACTION")
  (make-package "OM_AIV_NAVIGATION::PLAYACTION"))

(in-package "ROS")
;;//! \htmlinclude PlayAction.msg.html


(defclass om_aiv_navigation::PlayAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod om_aiv_navigation::PlayAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance om_aiv_navigation::PlayActionGoal :init))
    ((:action_result __action_result) (instance om_aiv_navigation::PlayActionResult :init))
    ((:action_feedback __action_feedback) (instance om_aiv_navigation::PlayActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; om_aiv_navigation/PlayActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; om_aiv_navigation/PlayActionResult _action_result
    (send _action_result :serialization-length)
    ;; om_aiv_navigation/PlayActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; om_aiv_navigation/PlayActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; om_aiv_navigation/PlayActionResult _action_result
       (send _action_result :serialize s)
     ;; om_aiv_navigation/PlayActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; om_aiv_navigation/PlayActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; om_aiv_navigation/PlayActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; om_aiv_navigation/PlayActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get om_aiv_navigation::PlayAction :md5sum-) "d6f2e876613403d8a89eb59fe3ea9bf7")
(setf (get om_aiv_navigation::PlayAction :datatype-) "om_aiv_navigation/PlayAction")
(setf (get om_aiv_navigation::PlayAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

PlayActionGoal action_goal
PlayActionResult action_result
PlayActionFeedback action_feedback

================================================================================
MSG: om_aiv_navigation/PlayActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
PlayGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: om_aiv_navigation/PlayGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
string goal_play


================================================================================
MSG: om_aiv_navigation/PlayActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
PlayResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: om_aiv_navigation/PlayResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
string status


================================================================================
MSG: om_aiv_navigation/PlayActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
PlayFeedback feedback

================================================================================
MSG: om_aiv_navigation/PlayFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
string received_data


")



(provide :om_aiv_navigation/PlayAction "d6f2e876613403d8a89eb59fe3ea9bf7")

