#!/bin/bash

# Fetch the fan speed using 'sensors' command
fan_speed=$(sensors | awk '/fan1:/ {print $2}')

# Check if fan_speed is empty or zero
if [[ -z "$fan_speed" || "$fan_speed" -eq 0 ]]; then
  fan_speed="0 RPM"
else
  fan_speed="${fan_speed} RPM"
fi

# Output in JSON format for Waybar
echo $fan_speed

#fflush(stdout)
