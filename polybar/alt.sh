#!/usr/bin/env sh

herbstclient set frame_padding 0
herbstclient set frame_gap 0
herbstclient pad 0 22 0 0 0
herbstclient set window_gap 0
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar alt &

echo "Bars launched..."
