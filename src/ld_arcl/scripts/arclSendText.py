#!/usr/bin/env python
from connectwifi import connecttowifi
from connectwifi import manager, connection_path, settings_path, connection_params, connection_path, manager_props
from socketconnection import socketconnect
from socketconnection import data, s

import socket
import threading
import time
import re
import sys
import rospy
from std_msgs.msg import String
BUFFER_SIZE = 1024

class commandtosend:
     command = raw_input("Enter messsage you want to send to ARCL clients: ")
sendcommand = commandtosend()

def talker():
    global manager
    global s
    global data
    pub = rospy.Publisher('arcl_arclSendText', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    
    global rcv
    global i
    i = 1
    flag = 0
    # data = s.recv(BUFFER_SIZE)
    rcv = data.decode("utf-8")
    while (flag == 0):
        if "End of commands" in rcv:
            flag == 1
            while not rospy.is_shutdown():
                cmd = "arclSendText {}".format(sendcommand.command)
                cmd = cmd.encode('ascii')
                s.send(cmd+b"\r\n")
                print "running command:" ,cmd
                time.sleep(1)
                data = s.recv(BUFFER_SIZE)
                rcv = data.decode("utf-8")
                
                pubout = str(data.splitlines())
                pub.publish(pubout)
                time.sleep(1)
                rospy.loginfo(rcv)
                time.sleep(2)
                exit(0)

        else:
            flag == 0
            data = s.recv(BUFFER_SIZE)
            rcv = data.decode("utf-8")
                
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass


