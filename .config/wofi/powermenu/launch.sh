#!/bin/bash

if pgrep -x "wofi" > /dev/null
then
  pkill wofi
else
  ~/.config/wofi/powermenu/powermenu.sh
fi
