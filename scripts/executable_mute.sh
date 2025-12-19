      
#!/bin/bash

# Get the Process ID of the currently focused window.
FOCUSED_PID=$(xdotool getwindowpid "$(xdotool getactivewindow)")

# If xdotool fails to get a PID, exit silently.
if [ -z "$FOCUSED_PID" ]; then
    exit 0
fi

# Find ALL sink-input IDs that match the PID and loop through them.
# The 'exit' command in awk has been removed to allow finding multiple matches.
pactl list sink-inputs | \
awk -v pid="$FOCUSED_PID" '
    /^Sink Input / { current_id = substr($3, 2) }
    /application.process.id =/ {
        gsub(/"/, "", $3)
        if ($3 == pid) {
            print current_id
        }
    }
' | \
while read -r SINK_INPUT_ID; do
    # For each ID found, toggle its mute state.
    pactl set-sink-input-mute "$SINK_INPUT_ID" toggle
done

    
