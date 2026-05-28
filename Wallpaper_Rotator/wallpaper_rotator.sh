#!/bin/bash

WALLPAPER_DIR="/home/utkarsh/Downloads/Wallpaper"
STATE_FILE="/tmp/current_wallpaper"
TOTAL=8


if [ ! -f "$STATE_FILE" ]; then
    echo 1 > "$STATE_FILE"
fi

CURRENT=$(cat "$STATE_FILE")

WALL="$WALLPAPER_DIR/wall$CURRENT.png"


gsettings set org.gnome.desktop.background picture-uri "file://$WALL"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALL"

echo "Wallpaper changed to wall$CURRENT.png"

NEXT=$((CURRENT + 1))

if [ "$NEXT" -gt "$TOTAL" ]; then
    NEXT=1
fi

echo "$NEXT" > "$STATE_FILE"
