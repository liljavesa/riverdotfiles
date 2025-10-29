#!/usr/bin/env bash

waybar &
mako &
wl-clipboard-histry -t &
wl-paste --type text --watch cliphist store &
wl-paste --type images --watch cliphist store &
