nmcli device monitor wlp4s0 | while read line; do
    if echo "$line" | grep -q "disconnected"; then
        echo "Network disconnected"
        eww update wificon=
    elif echo "$line" | grep -q "connected$"; then
        echo "Network connected, running connect command..."
        # Your connect command here
        # For example: notify-send "Network Connected"
    fi
done
