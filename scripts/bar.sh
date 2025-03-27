#!/bin/dash

# Doom One Color Scheme
black="#1c1f24"
darkgray="#5b6268"
white="#bbc2cf"
red="#ff6c6b"
green="#98be65"
yellow="#da8548"
blue="#51afef"
magenta="#c678dd"
cyan="#5699af"
orange="#ECBE7B"
purple="#a9a1e1"

soft_black="#282c34"
gray="#4b5263"
bright_red="#e06c75"
bright_green="#98c379"
bright_yellow="#e5c07b"
bright_blue="#61afef"
bright_magenta="#d55fde"
bright_cyan="#56b6c2"
bright_orange="#d19a66"

battery() {
  get_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
  get_status=$(cat /sys/class/power_supply/BAT0/status)

  if [ "$get_status" = "Charging" ]; then
    printf "^c$green^󱊡 $get_capacity%%"
  elif [ "$get_capacity" -le 20 ]; then
    printf "^c$red^󰁽 $get_capacity%%"
  elif [ "$get_capacity" -le 50 ]; then
    printf "^c$yellow^󰂃 $get_capacity%%"
  else
    printf "^c$blue^󰁹 $get_capacity%%"
  fi
}

volume() {
  vol=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
  printf "^c$bright_green^󰕾 $vol"
}

kernel_version() {
  printf "^c$blue^󰌽 $(uname -r)"
}

ram_usage() {
  printf "^c$magenta^󰍛 $(free -h | awk '/^Mem:/ {print $3}')"
}

disk_usage() {
  printf "^c$cyan^󰋊 $(df -h / | awk 'NR==2 {print $4}')"
}

date_time() {
  printf "^c$yellow^󰥔 $(date "+%Y-%m-%d (%a) %I:%M%p") "
}

wifi_status() {
  ssid=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d':' -f2)
  if [ -z "$ssid" ]; then
    printf "^c$red^󰤭 Disconnected"
  else
    printf "^c$purple^󰤨 $ssid"
  fi
}

music_status() {
  player=$(playerctl -l | grep 'firefox' | head -n 1) # Get first Firefox player
  song=$(playerctl -p "$player" metadata --format '{{artist}} - {{title}}' 2>/dev/null)

  if [ -z "$song" ]; then
    printf "^c$darkgray^󰎆 No Music"
  else
    truncated_song=$(echo "$song" | awk '{if (length($0) > 25) print substr($0, 1, 22) "..."; else print $0}')
    printf "^c$bright_yellow^󰎆 $truncated_song"
  fi
}

while true; do
  status_bar="$(wifi_status) ^c$white^| $(kernel_version) ^c$white^| $(ram_usage) ^c$white^| ^c$red^$(battery) ^c$white^| $(disk_usage) ^c$white^| $(volume) ^c$white^| $(date_time)"

  xsetroot -name "$status_bar"

  sleep 3
done
