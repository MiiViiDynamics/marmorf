#!/bin/sh

#the file must use the absolute path
BAG_FILE=$1
TARGET_BAG=$2


#filter the bag
rosbag filter $BAG_FILE $TARGET_BAG "topic =='/imu_sync' or topic =='/lidar_points_sync'"

#generate pbstream file
roslaunch marmorf_localization cartographer3d_map_create.launch bag_filenames:=$TARGET_BAG imu_topic:=/imu_sync lidar_topic:=/lidar_points_sync
#generate map
roslaunch marmorf_localization assets_writer_miivii_3d.launch bag_filenames:=$TARGET_BAG pose_graph_filename:=$TARGET_BAG.pbstream
#remove the absolute path of yaml
sh fix_yaml_path.sh $TARGET_BAG
