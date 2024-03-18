#!/bin/sh

SNIPS=${HOME}/home/adigoj/Scripts/snippets

FILE=`ls ${SNIPS} | bin/rofi -dmenu`

if  [ -f ${SNIPS}/${FILE} ]; then
  DATA=$([ -x "${SNIPS}/${FILE}" ] && bash "${SNIPS}/${FILE}" || head --bytes=-1 ${SNIPS}/${FILE} )
  printf "$DATA" | xsel -p -i
