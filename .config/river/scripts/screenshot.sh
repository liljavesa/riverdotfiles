#!/bin/sh
# screenshot.sh
grim -g "$(slurp -w 0)" - | wl-copy
