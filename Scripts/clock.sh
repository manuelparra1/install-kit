#!/bin/bash

display_time() {
    while true; do
        current_time=$(date +"%l:%M %p")
        figlet -f "ANSI Regular" "$current_time"
        echo "Press 'q' to exit"
        sleep 10
        clear
    done
}

trap 'kill 0' EXIT  # Ensure all background processes are terminated on script exit

# Start the display_time function in the background
display_time &

# Wait for the user to type 'q' to exit
while true; do
    read -n 1 -s input
    if [ "$input" = "q" ]; then
        echo -e "Goodbye!"
        break
    fi
done
