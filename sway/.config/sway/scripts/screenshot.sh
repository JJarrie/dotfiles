#!/bin/sh
DIR="$HOME/Images/Screenshots"
mkdir -p "$DIR"
f="$DIR/$(date +%Y-%m-%d_%H-%M-%S).png"
maim "$@" "$f" && notify-send "Screenshot saved to $f"
