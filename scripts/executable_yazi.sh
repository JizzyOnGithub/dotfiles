#!/bin/bash
cd "$1" || exit
exec kitty --single-instance --directory="$1" yazi
