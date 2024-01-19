// Tugas Day 4 URO
// ROS Topic - Subscriber (cpp)
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

# include "ros/ros.h"
# include "tugas4/Pesan.h"

void writeMsgToLog(const tugas4::Pesan::ConstPtr &msg){
    ROS_INFO("\nSubscriber menerima pesan berikut: \n");
    ROS_INFO("Usia: %ld \n", msg->usia);
    ROS_INFO("Tinggi: %lf \n", msg->tinggi);
    ROS_INFO("Nama: %s \n", msg->nama.c_str());
    ROS_INFO("Kehadiran: %d \n", msg->kehadiran);
}

int main(int argc, char **argv){
    ros::init(argc, argv, "Subscriber");
    ros::NodeHandle nh;

    // ini buat siapa subscribernya -> topic_sub
    // argument: nama topic, queue, callback function
    ros::Subscriber topic_sub = nh.subscribe("topic", 100, writeMsgToLog);

    ros::spin();

    return 0;
}
