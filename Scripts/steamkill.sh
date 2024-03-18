#!/bin/bash
#
# Kill all instances of steam

sudo kill $(ps ax|grep "steam" | awk -F"\ " '{ print $1 }')
