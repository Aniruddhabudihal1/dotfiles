#!/bin/bash

# Internal display
INTERNAL="eDP-1"

# External display via dock
EXTERNAL="DP-1-1"

# Check if external is connected
if xrandr | grep "^$EXTERNAL connected" >/dev/null; then
  # Use only the external display, disable internal
  xrandr --output "$EXTERNAL" --mode 1920x1080 --primary \
    --output "$INTERNAL" --off
else
  # Just use internal if external is not found
  xrandr --output "$INTERNAL" --mode 1920x1200 --primary \
    --output "$EXTERNAL" --off
fi
