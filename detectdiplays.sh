#!/bin/sh
command=$(xrandr --query | grep " connected"|cut -d " " -f1)
count=$(xrandr --query | grep " connected"|cut -d " " -f1| wc -w)

if [ "$count" -eq 2 ];
then
xrandr --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output eDP-1 --off --output DP-2 --primary --mode 1680x1050 --pos 0x0 --rotate normal
else
xrandr --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output eDP-1 --mode 1366x768 --pos 0x0 --rotate normal --output DP-2 --off
fi

xdotool key Super_L+Shift+r > /dev/null