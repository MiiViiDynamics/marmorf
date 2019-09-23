#!/bin/sh
#usage: arguments is directory
#use the absolute path
DIRECTORY=$1

for file in $DIRECTORY/*
do
    if test -f $file
    then
        if [ "${file##*.}" = "bag" ]
        then
            startTime=`date +"%s.%N"` >/dev/null 2>&1
            echo $file
            #here use lidar_points, becasue we use velodyne_pointcloud to transfer raw packets to lidar_points
            rosrun marmorf_localization test_localization.sh $file
            endTime=`date +"%s.%N"` >/dev/null 2>&1
            #beacuse the program may need many time to load, don't think the time may not be accurate.
            #echo `awk -v x1="$(echo $endTime | cut -d '.' -f 1)" -v x2="$(echo $startTime | cut -d '.' -f 1)" -v y1="$[$(echo $endTime | cut -d '.' -f 2) / 1000]" -v y2="$[$(echo $startTime | cut -d '.' -f 2) /1000]" 'BEGIN{printf "RunTime:%.6f s",(x1-x2)+(y1-y2)/1000000}'`  > $file"_localization_time"
        fi
    fi
done
