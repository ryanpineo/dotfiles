#!/bin/bash

IMG_DIR="$HOME/pictures/lockscreens"
IMG_FILENAME="$(ls $IMG_DIR | sort -R | tail -1)"
IMG_FILEPATH="$IMG_DIR/$IMG_FILENAME"

SCREEN_RES="$(xrandr | grep '*' | grep -o '[[:digit:]]\+x[[:digit:]]\+')"
CACHE_HOME="$IMG_DIR/cache"
CACHE_DIR="$CACHE_HOME/$SCREEN_RES"
CACHE_FILEPATH="$CACHE_DIR/$IMG_FILENAME"

if [ ! -f "$CACHE_FILEPATH" ]; then
    mkdir -p "$CACHE_DIR"
    convert "$IMG_FILEPATH" -resize "$SCREEN_RES" "$CACHE_FILEPATH"
fi

i3lock --image="$CACHE_FILEPATH" -u
