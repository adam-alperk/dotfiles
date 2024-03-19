#!/bin/bash
#
# ██     ██  █████  ██    ██ ██████   █████  ██████      ██       █████  ██    ██ ███    ██  ██████ ██   ██ 
# ██     ██ ██   ██  ██  ██  ██   ██ ██   ██ ██   ██     ██      ██   ██ ██    ██ ████   ██ ██      ██   ██ 
# ██  █  ██ ███████   ████   ██████  ███████ ██████      ██      ███████ ██    ██ ██ ██  ██ ██      ███████ 
# ██ ███ ██ ██   ██    ██    ██   ██ ██   ██ ██   ██     ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██ 
#  ███ ███  ██   ██    ██    ██████  ██   ██ ██   ██     ███████ ██   ██  ██████  ██   ████  ██████ ██   ██ 
#
# Script to toggle waybar by adigoj

cd ~/.config/waybar/

if pgrep -x "waybar" > /dev/null
then
  pkill waybar
else
  waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css
fi

exit 1
