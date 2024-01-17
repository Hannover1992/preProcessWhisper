#!/bin/bash
find .. -type f -name "*.mp4" | parallel 'file={}; if [ -f "$file" ]; then ffmpeg -i "$file" -q:a 0 -map a "${file%.mp4}.mp3"; else echo "File does not exist"; fi'
