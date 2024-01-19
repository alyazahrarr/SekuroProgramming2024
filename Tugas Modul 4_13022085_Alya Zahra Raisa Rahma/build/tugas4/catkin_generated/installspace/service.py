#!/usr/bin/env

# Tugas Day 4 URO
# ROS Service - Service Server (py)
# Nama : Alya Zahra Raisa Rahma
# NIM  : 13022085

import rospy
import math
from tugas4.srv import Phytagoras, PhytagorasResponse

def callback(request):
    return PhytagorasResponse(math.sqrt(pow(request.komponenX, 2) + pow(request.komponenY, 2) + pow(request.komponenZ, 2)))

def phytagoras():
    rospy.init_node("service")

    # argument: nama service, file, callback func
    service = rospy.Service("phyta_python", Phytagoras, callback)
    rospy.spin()

if __name__ == '__main__':
    phytagoras()
