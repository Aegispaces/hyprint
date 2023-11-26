#!/bin/bash

# Open hyprpicker to pause the screen
hyprpicker -r -z &

# Store the process ID of hyprpicker
hyprpicker_pid=$!

# Wait for hyprpicker to start
sleep 0.1

# Open hyprshot to select a region
hyprshot -m region 

# Store the process ID of hyprshot
hyprshot_pid=$!

# Wait for the hyprshot process to finish
wait $hyprshot_pid

# Wait for hyprpicker to start
sleep 0.1

# Close hyprpicker
kill $hyprpicker_pid

# Close hyprshot
kill $hyprshot_pid
