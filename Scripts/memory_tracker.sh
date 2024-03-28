#!/bin/bash

LOG_FILE="memory_usage_log.txt"

while true; do
    # Get MemTotal and MemFree from /proc/meminfo
    mem_total=$(grep 'MemTotal' /proc/meminfo | awk '{print $2}')
    mem_free=$(grep 'MemFree' /proc/meminfo | awk '{print $2}')

    # Calculate the memory being consumed
    memory_consumed=$((mem_total - mem_free))

    # Log the current memory consumption to the file
    echo "$(date '+%Y-%m-%d %H:%M:%S') MemoryConsumed: $memory_consumed kB" >> "$LOG_FILE"

    # Sleep for 15 seconds
    sleep 15
done
