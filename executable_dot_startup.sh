#!/bin/bash
xrandr --output HDMI-0 --rate 240 && xrandr --output HDMI-1-1 --mode 1920x1080 && xrandr --output HDMI-1-1 --right-of HDMI-0 &
picom &
sleep 0.5
feh --bg-fill ~/.bg.png &
sleep 1
easyeffects --gapplication-service
joystickwake &
mate-polkit &
eww open leftbar &
xset s off &
xset s noblank &
gsr-ui &
