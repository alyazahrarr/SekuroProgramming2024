// Tugas Day 4 URO
// ROS Service - Service Client (cpp)
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

# include "ros/ros.h"
# include "tugas4/Phytagoras.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "Client_Node");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<tugas4::Phytagoras>("phyta");

    tugas4::Phytagoras srv;
    srv.request.komponenX = 1;
    srv.request.komponenY = 2;
    srv.request.komponenZ = 3;

    if(client.call(srv)){
        ROS_INFO("Magnitudenya adalah: %lf", srv.response.magnitude);
    }
    else {
        ROS_INFO("Failed to call the service.");
        return 1;
    }

    return 0;
}
