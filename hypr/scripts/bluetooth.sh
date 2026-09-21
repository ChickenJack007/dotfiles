 #!/bin/bash
STATUS=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
if [ "$STATUS" = "yes" ]; then
    bluetoothctl power off
    notify-send "Bluetooth Off"
else
    bluetoothctl power on
    notify-send "Bluetooth On"
fi
