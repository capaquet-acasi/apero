#!/bin/bash
declare -a arr=("hey.mp3" "cough.mp3" "keyboard.mp3" "sheep.mp3" "cat.mp3")
while true
do	
	OLD=$(osascript -e 'set ovol to output volume of (get volume settings)')
	osascript -e 'set volume output volume 1'

	SOUND=$(($RANDOM % 5))
	afplay ${arr[($SOUND)]}

	osascript -e "set volume output volume $OLD"
	sleep $((1 + $RANDOM % 600))
done
