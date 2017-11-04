#!/usr/bin/env sh

herbstclient set frame_gap 5
herbstclient set window_gap 10
herbstclient pad 0 16 0 0 0
herbstclient set frame_padding 15

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar scoot &


echo "Bars launched..."
