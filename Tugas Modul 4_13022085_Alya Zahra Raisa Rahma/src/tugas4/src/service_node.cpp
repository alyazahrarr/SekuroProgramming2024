// Tugas Day 4 URO
// ROS Service - Service Server (cpp)
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

# include "ros/ros.h"
# include "tugas4/Phytagoras.h"
# include <cmath>

bool add(tugas4::Phytagoras::Request &req, tugas4::Phytagoras::Response &res){
    res.magnitude = sqrt(pow(req.komponenX, 2) + pow(req.komponenY, 2) + pow(req.komponenZ, 2));
    return true;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "Service_Node");
    ros::NodeHandle nh;

    // argument: nama service, callback func
    ros::ServiceServer service = nh.advertiseService("phyta", add);

    ros::spin();

    return 0;
}
