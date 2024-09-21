#!bin/bash

IMG_DIR='/home/am/Images/gruvbox/'
TIME=300


while [ $(pgrep Hyprland) -gt "0" ]
do
  swww img $IMG_DIR'/'$(ls $IMG_DIR | shuf -n 1)
  sleep $TIME 
done
