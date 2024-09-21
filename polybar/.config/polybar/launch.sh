#!/usr/bin/env bash

dir="$HOME/.config/polybar"
themes=($(ls --hide="launch.sh" $dir))

launch-bar() {
  killall -q polybar
  while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
  polybar -q main -c "$dir/config.ini" &
}

launch-bar
