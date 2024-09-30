#!/bin/bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# polybar main -c $(dirname $0)/config.ini &

# if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
# 	# polybar external -c $(dirname $0)/config.ini &
# fi
if [[ $HOSTNAME == "magus-desktop" ]]; then
  polybar --reload desktop1 & disown
  polybar --reload desktop2 & disown
fi

if [[ $HOSTNAME == "archbtw" ]]; then
  polybar --reload laptop & disown
fi
