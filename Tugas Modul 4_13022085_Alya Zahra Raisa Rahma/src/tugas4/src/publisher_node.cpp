// Tugas Day 4 URO
// ROS Topic - Publisher (cpp)
// Nama : Alya Zahra Raisa Rahma
// NIM  : 13022085

# include "ros/ros.h"
# include "tugas4/Pesan.h"

int main(int argc, char**argv){
    ros::init(argc, argv, "Publisher");
    ros::NodeHandle nh;

    // ini buat siapa publishernya -> topic_pub
    // argument: nama topic, queue
    ros::Publisher topic_pub = nh.advertise<tugas4::Pesan>("topic", 100);
    ros::Rate loop_rate(1);

    // selama ros jalan
    while(ros::ok()){
        tugas4::Pesan dataVariabel;
        dataVariabel.usia = 18;
        dataVariabel.tinggi = 1.45;
        dataVariabel.nama = "Alya Zahra Raisa Rahma";
        dataVariabel.kehadiran = true;

        ROS_INFO("\n Usia: %ld \n Tinggi: %lf \n Nama: %s \n Kehadiran: %d", dataVariabel.usia, dataVariabel.tinggi, dataVariabel.nama.c_str(), dataVariabel.kehadiran);

        topic_pub.publish(dataVariabel);
        
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
