#!/bin/bash

hyprpicker -r -z &

hyprpicker_pid=$!

sleep 0.1

hyprshot -m region --clipboard-only

hyprshot_pid=$!

wait $hyprshot_pid

sleep 0.1

kill $hyprpicker_pid

kill $hyprshot_pid
