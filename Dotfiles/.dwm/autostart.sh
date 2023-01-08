#!/bin/bash

dwmblocks &
#$HOME/.config/polybar/launch.sh &
sxhkd -c $HOME/.config/dwm-sxhkd/dwm-sxhkdrc &
dunst &
numlockx &
clipmenud &
#picom --config $HOME/.config/picom/picom.sample.conf --experimental-backends &
nitrogen --restore &
#pkill back4.sh &
#back4.sh auto ~/Pictures/Wallpaper/Futuristic.gif &
#nohup easyeffects --gapplication-service 
