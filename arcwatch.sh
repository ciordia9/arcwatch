#!/bin/bash
# Using inotify toolkit watch a directory and push new files through ArcWelder.
# Please make sure to install ArcWelderLib from https://github.com/FormerLurker/ArcWelderLib
# Assign correct paths below, remember to install inotify and arcwelder!
# inotify's logs will go to stderr while ArcWelder's log will go to the directory you specify

arcweldbin=/home/pi/bin/ArcWelder
watchdir=/home/pi/gcode_files
logdir=/home/pi/gcode_files/arcweld
arcdir=/home/pi/gcode_files/arcweld

inotifywait -d $watchdir -e create -e moved_to -o /home/pi/dev/arcwatch/log.log|
    while read dir action file; do
	$arcweldbin $dir/$file $arcdir/aw-$file >> $logdir/arcweld.log
    done
