#!/bin/bash

# Outputs and desired modes
MONITOR="eDP-1"
MONITOR_MODE="1920x1080@60.020000Hz"

TV="HDMI-A-1"
TV_MODE="3840x2160@30.000000Hz"

# Get enabled output (line with "Enabled: yes" after output name)
CURRENT_ENABLED=$(wlr-randr | awk '
  /^[^ ]/ {output=$1} 
  /Enabled: yes/ {print output}
')

if [[ "$CURRENT_ENABLED" == "$MONITOR" ]]; then
  echo "Switching to TV..."
  wlr-randr \
    --output "$MONITOR" --off \
    --output "$TV" --on \
    --output "$TV" --mode "$TV_MODE"
elif [[ "$CURRENT_ENABLED" == "$TV" ]]; then
  echo "Switching to Monitor..."
  wlr-randr \
    --output "$TV" --off \
    --output "$MONITOR" --on \
    --output "$MONITOR" --mode "$MONITOR_MODE"
else
  echo "No known output is currently enabled. Defaulting to Monitor..."
  wlr-randr \
    --output "$TV" --off \
    --output "$MONITOR" --mode "$MONITOR_MODE"
fi
