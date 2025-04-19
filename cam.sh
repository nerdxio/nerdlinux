#!/bin/bash

while true; do
  # Check if phone is connected via adb
  if adb devices | grep -q "device$"; then
    # If scrcpy isn't running, start it
    if ! pgrep -x scrcpy > /dev/null; then
      echo "Starting scrcpy..."
      scrcpy --video-source=camera --no-audio --camera-facing=front --v4l2-sink=/dev/video2 --no-display &
    fi
  else
    # Kill scrcpy if phone disconnected
    if pgrep -x scrcpy > /dev/null; then
      echo "Phone disconnected, killing scrcpy..."
      pkill scrcpy
    fi
  fi
  
  # Wait before checking again
  sleep 5
done