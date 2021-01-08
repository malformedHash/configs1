#!/bin/bash

# setting up custom resolution
# xrandr --newmode "1920x1080_60.00" 172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
# xrandr --addmode Virtual1 "1920x1080_60.00"
# xrandr --output Virtual1 --mode "1920x1080_60.00"
/home/jarjar/scripts/resolution-script.sh

numlockx on

setxkbmap fi

picom &

# ~/.fehbg &
feh --bg-scale /home/jarjar/Downloads/johannes-plenio-unsplash.jpg
