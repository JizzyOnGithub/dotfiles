#!/bin/sh

updates=$(apt list --upgradable 2>/dev/null | wc -l | awk '{print $1-1}')

if [ "$updates" -eq 0 ]; then
	echo "Up to date"
else
	echo "$updates"
fi
