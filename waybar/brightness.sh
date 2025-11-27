#!/bin/bash

# Get current brightness
brightness=$(sudo ddcutil getvcp 10 | grep -Po '(?<=current value = )\d+')

# Print for Waybar
echo "🔆 $brightness%"
