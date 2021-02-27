xset r rate 250 60                          # keyboard repeat delay and rate
#xsetroot -solid darkgrey                    # set root window background
xrandr --output HDMI-1 --mode 1280x720
setxkbmap -option grp:ctrl_shift_toggle,grp_led:scroll us,bg -variant ,phonetic #това за us,bg(phonetic)

#while true; do xsetroot -name "$(date)"; sleep 2; done &
#while true; do xsetroot -name "$(date)"+"$(vcgencmd measure_temp)"+"$(vcgencmd measure_clock arm)"; sleep 1; done &
dwmFlag="false"
./test.bash &
exec dwm
dwmFlag=1
