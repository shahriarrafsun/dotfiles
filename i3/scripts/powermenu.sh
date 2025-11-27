#!/bin/bash

# Power menu options
options="Lock\nSuspend\nReboot\nShutdown\nLogout"

# Launch rofi with a custom location (top right corner)
chosen=$(echo -e "$options" | rofi -dmenu -i -p ""\
  -location 1 \
  -xoffset -20 \
  -yoffset 30 \
  -width 15 \
  -lines 5 \
  -theme-str 'window { anchor: northeast; location: northeast; width: 15em; margin: 5px 5px; }
              listview { lines: 5; padding: 0px 5px; } 
              element { padding: 2px 5px; } 
              textbox-prompt-p { expand: false; }'
)


case "$chosen" in
  "Lock") i3lock ;;
  "Suspend") systemctl suspend ;;
  "Reboot") systemctl reboot ;;
  "Shutdown") systemctl poweroff ;;
  "Logout") i3-msg exit ;;
  *) exit 1 ;;
esac
