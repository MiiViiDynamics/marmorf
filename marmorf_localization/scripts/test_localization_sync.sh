#!/bin/sh

LOCALIZATION_BAG=$1
PCD_END=_points.pcd
MAP_END=_map.yaml


roslaunch marmorf_localization hdl_localization_offline.launch bag_filename:=$LOCALIZATION_BAG imu_topic:=/imu_sync lidar_topic:=/lidar_points_sync pcd_file:=${LOCALIZATION_BAG}${PCD_END}  map_file:=${LOCALIZATION_BAG}${MAP_END}
