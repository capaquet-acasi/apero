#!/bin/bash
declare -a arr=("hey.mp3" "sheep.mp3" "cat.mp3")
while true
do	
	osascript -e 'set Volume 2'
	SOUND=$(($RANDOM % 3))
	afplay ${arr[($SOUND)]}
	sleep $((1 + $RANDOM % 5))
	echo $(($RANDOM % 300))
done
