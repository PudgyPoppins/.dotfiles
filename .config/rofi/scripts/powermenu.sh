#!/bin/bash

rofi_command="rofi -theme themes/powermenu.rasi"

### Options ###
power_off=""
reboot=""
lock=""
#suspend="鈴"
suspend=""
log_out=""
#hibernate=""
hibernate="鈴"
# Variable passed to rofi
options="$power_off\n$reboot\n$hibernate\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;; 
    $reboot)
        systemctl reboot
        ;;
    $lock)
        #betterlockscreen -l blur
	dm-tool lock
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $log_out)
        i3-msg exit | \
        for window_id in $(bspc query -W); do
        bspc window $window_id -c
        done
        bspc quit
        ;;
    $hibernate)
        systemctl hibernate
        ;;


esac

