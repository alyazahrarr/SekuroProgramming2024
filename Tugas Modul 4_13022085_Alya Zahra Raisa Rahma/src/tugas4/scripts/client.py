#!/usr/bin/env

# Tugas Day 4 URO
# ROS Service - Service Client (py)
# Nama : Alya Zahra Raisa Rahma
# NIM  : 13022085

import rospy
from tugas4.srv import Phytagoras, PhytagorasResponse

def phytagoras_client(komponenX, komponenY, komponenZ):
    rospy.init_node("client")
    rospy.wait_for_service("phyta_python")
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        try:
            # argument: nama service, file
            phytagoras = rospy.ServiceProxy("phyta_python", Phytagoras)
            response = phytagoras(komponenX, komponenY, komponenZ)
            rospy.loginfo(response.magnitude)
            rate.sleep()
        except rospy.ServiceException as e:
            print("Service call failed %s", e)

if __name__ == '__main__':
    phytagoras_client(1, 2, 3)
