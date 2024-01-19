#!/usr/bin/env

# Tugas Day 4 URO
# ROS Topic - Subscriber (py)
# Nama : Alya Zahra Raisa Rahma
# NIM  : 13022085

import rospy
from tugas4.msg import Pesan

def callback(data):
    rospy.loginfo("Subscriber menerima pesan berikut:")
    rospy.loginfo("Usia: %ld" %data.usia)
    rospy.loginfo("Tinggi: %lf" %data.tinggi)
    rospy.loginfo("Nama: %s" %data.nama)
    rospy.loginfo("Kehadiran: %d" %data.kehadiran)

def listener():
    rospy.init_node('subscriber', anonymous=True)
    rospy.Subscriber('topic_python', Pesan, callback)
    rospy.spin()

if __name__ == '__main__' :
    listener()
