# RTSP2RTMP
This is a script that I use to grab the RTSP stream from my Reolink camera and save it to disk in 30 minute chunks and send the stream to an Ant Media RTMP point.  I currently have 6 of these running on an old Linux box with a load average of ~6 (on an 8-core).  The script doesn't transcode because that was too processor intensive with 6 of them running.

