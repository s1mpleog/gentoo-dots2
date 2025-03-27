xrandr --output eDP-1-0 --mode 1920x1080 --rate 60
xrandr --output HDMI-0 --mode 1920x1080 --rate 144 --right-of eDP-1-0

xrdb merge ~/.Xresources
xset r rate 200 50 &

xinput set-prop "ELAN0718:00 04F3:30FD Touchpad" "libinput Tapping Enabled" 1
xinput set-prop 14 "libinput Accel Profile Enabled" 0, 1

feh --bg-scale ~/Pictures/wallpapers/Electronic_Sample_96-calm-night.png --bg-fill ~/Pictures/wallpapers/Electronic_Sample_96-calm-night.png

picom &

gentoo-pipewire-launcher restart &

pkill -x bar.sh
/home/simple/.config/scripts/bar.sh &

exec dbus-launch --sh-syntax --exit-with-session dwm

