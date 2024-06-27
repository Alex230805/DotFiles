#!bin/bash

TOTAL_IMG=6
TOTAL_IMG_N=4
IMG_DIR='/home/am/Images/wp'
IMG_DIR_NIGHT='/home/am/Images/wpn'
TIME=460


random_number=$(shuf -i 1-$TOTAL_IMG -n 1)
cache=$random_number


random () {
    random_number=$(shuf -i 1-$1 -n 1)
}


while true
do
    time=$(date +"%H")
    if [ "$time" -gt "22" ]
    then
	random $TOTAL_IMG_N
	swaybg -m fill -i $IMG_DIR_NIGHT'/'$random_number'.jpg'
    else
	random $TOTAL_IMG
	swaybg -m fill -i $IMG_DIR'/'$random_number'.jpg'
    fi
    sleep $TIME
done

