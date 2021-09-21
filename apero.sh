#!/bin/bash
declare -a SOUND_LIST=("hey.mp3" "cough.mp3" "keyboard.mp3" "sheep.mp3" "cat.mp3")
while true
do	
	OLD=$(osascript -e 'set ovol to output volume of (get volume settings)')
	osascript -e 'set volume output volume 30'

	SOUND_INDEX=$(($RANDOM % 5))
	afplay ${SOUND_LIST[($SOUND_INDEX)]}

	osascript -e "set volume output volume $OLD"
	sleep $((1 + $RANDOM % 180))
done
