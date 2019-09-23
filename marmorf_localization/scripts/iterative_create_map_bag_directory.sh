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
            #we don't need to filter now, so here we just use the same two parameters to skip rosbag filter
            rosrun marmorf_localization create_3dmap.sh $file $file
            endTime=`date +"%s.%N"` >/dev/null 2>&1
            echo `awk -v x1="$(echo $endTime | cut -d '.' -f 1)" -v x2="$(echo $startTime | cut -d '.' -f 1)" -v y1="$[$(echo $endTime | cut -d '.' -f 2) / 1000]" -v y2="$[$(echo $startTime | cut -d '.' -f 2) /1000]" 'BEGIN{printf "RunTime:%.6f s",(x1-x2)+(y1-y2)/1000000}'`  > $file"_create_map_time"
        fi
    fi
done
