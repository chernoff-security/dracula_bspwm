#!/usr/bin/env bash

OPTIONS="Show history\nClear history\nSend test notification"

LAUNCHER="rofi -width 30 -dmenu -i -p notifications"

option=`echo -e $OPTIONS | $LAUNCHER`
if [ ${#option} -gt 0 ]
then
    case $option in
      "Show history")
        dunstctl history-pop
        ;;
      "Clear history")
        dunstctl history-clear 
        ;;
      "Send test notification")
        notify-send "Test" "test"
        ;;
      *)
        ;;
    esac
fi