#!/bin/sh

for file in *.png; do
    echo "Text extracted from $file:"
    tesseract "$file" stdout > "${file%.png}.txt"
done
