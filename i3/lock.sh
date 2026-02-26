#!/bin/sh

BLANK='#00000000'
AMBER='#FF7A00ff'
WRONG='#E60000ff'

IMAGE="/home/ani/Documents/wallpapers/cool/bmw.jpg"

i3lock-color \
  --insidever-color=$BLANK \
  --ringver-color=$BLANK \
  --insidewrong-color=$BLANK \
  --ringwrong-color=$BLANK \
  --inside-color=$BLANK \
  --ring-color=$BLANK \
  --line-color=$BLANK \
  --separator-color=$BLANK \
  --keyhl-color=$BLANK \
  --bshl-color=$BLANK \
  --verif-color=$AMBER \
  --wrong-color=$WRONG \
  --time-color='#FFFFFFff' \
  --date-color='#FFFFFFff' \
  --layout-color=$AMBER \
  --screen 1 \
  --blur 0 \
  --clock \
  --indicator \
  --radius 120 \
  --ring-width 0 \
  --ind-pos="w-150:200" \
  --time-pos="40:h-60" \
  --date-pos="40:h-35" \
  --time-align 1 \
  --date-align 1 \
  --verif-align 2 \
  --wrong-align 2 \
  --time-size=22 \
  --date-size=14 \
  --time-font="JetBrains Mono" \
  --date-font="JetBrains Mono" \
  --verif-font="JetBrains Mono" \
  --wrong-font="JetBrains Mono" \
  --verif-text="verifying..." \
  --wrong-text="incorrect" \
  --noinput-text="" \
  --image "$IMAGE" \
  --fill

