#!/bin/sh

#the file must use the absolute path
BAG_FILE=$1
TARGET_BAG=$2


#filter the bag
rosbag filter $BAG_FILE $TARGET_BAG "topic =='/imu'  or topic =='/lidar_points' "

#generate pbstream file
roslaunch marmorf_localization cartographer3d_map_create_rviz.launch bag_filenames:=$TARGET_BAG imu_topic:=/imu lidar_topic:=/lidar_points
#generate map
roslaunch marmorf_localization assets_writer_miivii_3d.launch bag_filenames:=$TARGET_BAG pose_graph_filename:=$TARGET_BAG.pbstream
