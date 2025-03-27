#!/bin/bash

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q 'MUTED' && echo "M" || echo "")

# Ensure clean JSON output
printf '{"text":"%s %s%%", "tooltip":"Volume: %s%%"}\n' "$VOLUME"
