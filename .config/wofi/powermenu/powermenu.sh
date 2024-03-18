#!/usr/bin/env bash

op=$( echo -e "   Poweroff\n   Reboot\n   Suspend\n   Lock\n   Logout" | wofi -ib --dmenu -x 2250 -y 10 -W 300 -H 230 -c ~/.config/wofi/powermenu/config -s ~/.config/wofi/powermenu/style.css | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
		hyprlock
                ;;
        logout)
                hyprctl dispatch exit
                ;;
esac
