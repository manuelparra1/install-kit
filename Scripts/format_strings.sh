#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please enter the string:"
    read -r input
else
    input="$1"
fi

formatted_input=$(echo "$input" | tr '[:upper:]' '[:lower:]' | awk 'BEGIN{RS="[^a-zA-Z0-9]+"}{printf "%s_", $0}' | sed 's/_$//')
echo "$formatted_input"
