#!/bin/bash
# This script uses maim instead of scrot

rofi_command="rofi -theme themes/maimmenu.rasi"

### Options ###
screen=""
area=""
window=""
# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
        screenshot=$(rofi -dmenu -p "Name for the screenshot(leave blank for default )")
        if [[screenshot=""]]; then
            sleep 1; maim ~/Pictures/$(date +%s).png
        else
            sleep 1; maim ~/Pictures/$screenshot.png
        fi
        ;;
    $area)
        screenshot=$(rofi -dmenu -p "Name for the screenshot(leave blank for default )")
        if [[screenshot=""]]; then
            sleep 1; maim -s ~/Pictures/$(date +%s).png
        else
            sleep 1; maim -s ~/Pictures/$screenshot.png
        fi
        ;;
    $window)
        screenshot=$(rofi -dmenu -p "Name for the screenshot(leave blank for default )")
        if [[screenshot=""]]; then
            sleep 1; maim -i $(xdotool getactivewindow) ~/Pictures/$(date +%s).png
        else
            sleep 1; maim -i $(xdotool getactivewindow) ~/Pictures/$screenshot.png
        fi
        ;;
esac

