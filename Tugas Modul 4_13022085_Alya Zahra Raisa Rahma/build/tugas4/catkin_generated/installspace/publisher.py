#!/usr/bin/env

# Tugas Day 4 URO
# ROS Topic - Publisher (py)
# Nama : Alya Zahra Raisa Rahma
# NIM  : 13022085

import rospy
from tugas4.msg import Pesan

def talk_to_me():
    # argument: nama topic, pesan, queue size
    pub = rospy.Publisher('topic_python', Pesan, queue_size=10)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        data = Pesan()
        data.usia = 18
        data.tinggi = 1.45
        data.nama = "Alya Zahra Raisa Rahma"
        data.kehadiran = True

        rospy.loginfo("\n Usia: %ld" % data.usia)
        rospy.loginfo("\n Tinggi: %lf" % data.tinggi)
        rospy.loginfo("\n Nama: %s" % data.nama)
        rospy.loginfo("\n Kehadiran: %d" % data.kehadiran)

        pub.publish(data)
        rate.sleep()

if __name__ == '__main__' :
    try:
        talk_to_me()
    except rospy.ROSInterruptException:
        pass
