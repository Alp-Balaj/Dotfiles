#!/bin/zsh
TRACK_INFO=$(playerctl metadata --format '{{ artist }} - {{ title }} ({{ album }})')
notify-send -c music -i spotify "Now Playing" "$TRACK_INFO"