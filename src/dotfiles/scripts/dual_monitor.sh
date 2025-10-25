#!/bin/bash

my_second_monitor=$(xrandr --query | grep 'HDMI-1-0')
if [[ $my_second_monitor = *connected* ]]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output HDMI-1-0 --mode 1920x1080 --rotate normal --left-of eDP-1
fi
