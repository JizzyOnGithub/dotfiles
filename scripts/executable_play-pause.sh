#!/bin/bash

PLYR_ICON=$(playerctl metadata mpris:artUrl)
PLYR_ARTIST=$(playerctl metadata artist)
PLYR_TITLE=$(playerctl metadata title)
PLYR_STATUS=$(playerctl status)

notify-send --icon ${PLYR_ICON} "${PLYR_STATUS}" "${PLYR_ARTIST} • ${PLYR_TITLE}"
