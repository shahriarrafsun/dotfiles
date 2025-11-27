#!/bin/bash

chosen=$(echo -e "  Poweroff\n  Reboot\n  Suspend\n  Lock\n  Logout" | \
wofi --dmenu --prompt "Power Menu" --width 250 --height 200 --hide-scroll --insensitive)

case "$chosen" in
    "  Poweroff") systemctl poweroff ;;
    "  Reboot") systemctl reboot ;;
    "  Suspend") systemctl suspend ;;
    "  Lock") hyprlock ;;  # change this if you use swaylock or another locker
    "  Logout") hyprctl dispatch exit ;;
esac
