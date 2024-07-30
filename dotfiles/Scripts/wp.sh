#!bin/bash

TOTAL_IMG=6
TOTAL_IMG_N=4
IMG_DIR='/home/am/Images/wp'
IMG_DIR_NIGHT='/home/am/Images/wpn'
random_number=4

random () {
	random_number=$((1 + $RANDOM % $1))
}

getWallpaper () {
	time=$(date +"%H")
	if [ "$time" -gt "22" ]  || [ "$time" -le "7" ]
	then
		random $TOTAL_IMG_N
		swaybg -m fill -i $IMG_DIR_NIGHT'/'$random_number'.jpg'
	else
		random $TOTAL_IMG
		swaybg -m fill -i $IMG_DIR'/'$random_number'.jpg'
	fi
	sleep 3
}


while :
do
	getWallpaper
done
