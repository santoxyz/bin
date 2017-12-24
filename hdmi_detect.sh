#!/bin/sh
last=""
while [ true ]; do
	hdmi=$(cat /sys/class/drm/card0-HDMI-A-1/status)
	if [ "$hdmi" == "" ]; then 
		hdmi=$(cat /sys/class/drm/card1-HDMI-A-1/status)
	fi

	if [ "$last" == "$hdmi" ]; then
		: #doing nothing
	else
		last=$hdmi
		echo $(date) $last
		if [ $hdmi == "disconnected" ]; then 
			xrandr --output HDMI1 --off
		else
			xrandr --output HDMI1 --right-of eDP1 --auto
		fi
	fi
	sleep 1;
done
