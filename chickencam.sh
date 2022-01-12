#!/bin/bash

dirname="ChickenCam"

while :
do

  fname=`date "+%Y-%m-%d-%H:%M:%S"`

  ffmpeg -y -i rtsp://admin:b5a42lsh@192.168.1.121:1024/h264Preview_01_main -use_wallclock_as_timestamps 1 -c:v copy -c:a copy -t 1800 -map 0:v -bsf:v dump_extra -fflags +genpts -flags +global_header -movflags +faststart -map 0:a -map_metadata 0 -metadata title= -f tee /video/$dirname/$fname'.enc.mp4|[f=flv]rtmp://192.168.1.204/LiveApp/$dirnameRTMP'

  mv /video/$dirname/$fname.enc.mp4 /video/$dirname/$fname.large.mp4

done
