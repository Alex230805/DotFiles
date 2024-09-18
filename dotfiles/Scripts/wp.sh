#!bin/bash

TOTAL_IMG=9
TOTAL_IMG_N=4
IMG_DIR='/home/am/Images/wp'
IMG_DIR_NIGHT='/home/am/Images/wpn'

exec swaybg -m fill -i $IMG_DIR'/'$((1 + $RANDOM % $TOTAL_IMG))'.jpg'
