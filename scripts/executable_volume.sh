#!/bin/bash

# Volume control script with timer reset functionality

# Handle volume adjustment based on argument
if [[ "$1" == "up" ]]; then
  wpctl set-volume @DEFAULT_SINK@ 2%+
elif [[ "$1" == "down" ]]; then
  wpctl set-volume @DEFAULT_SINK@ 2%-
else
  echo "up or down? idiot"
  exit
fi

# Function to handle volume display and timeout
handle_volume() {
  # Get current volume
  VOLUME=$(pamixer --get-volume)
  
  # Check if volume window is already open
  if [[ $(eww active-windows | grep volume) != "volume: volume" ]]; then
    eww open volume
  fi
  
  # Update volume display
  eww update volperc="$VOLUME"
  if [[ $VOLUME -le 25 ]]; then
  	eww update volicon=󰕿
  elif [[ $VOLUME -le 45 ]]; then
  	eww update volicon=󰖀
  elif [[ $VOLUME -le 70 ]]; then 
    eww update volicon=󰕾
  elif [[ $VOLUME -gt 70 ]]; then
  	eww update volicon=󰕾!
  fi
  
  # Create a lock file to track the most recent script execution
  echo $$ > /tmp/volume_script_lock
  
  # Wait with periodic checks for script re-execution
  for i in {1..30}; do  # 30 * 0.1s = 3 seconds
    sleep 0.1
    
    # Check if another instance has updated the lock file
    if [[ "$(cat /tmp/volume_script_lock)" != $$ ]]; then
      # Another instance has taken over, exit without closing
      exit 0
    fi
  done
  
  # If we get here, the timer completed without interruption
  eww close volume
}

# Run the volume display handler
handle_volume
