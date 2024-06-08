#!bin/bash

TOTAL_IMG=6
IMG_DIR='/home/am/Images/wp'
TIME=420

random_number=$(shuf -i 1-$TOTAL_IMG -n 1)

CMD_STRING=$IMG_DIR'/'$random_number'.jpg'


while true
do 
    swaybg -m fill -i $CMD_STRING 
    sleep $TIME
done
