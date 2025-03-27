#!/bin/bash

# Set background opacity (adjust value as needed)
#kitty @ set-background-opacity 0.8

# Change color scheme dynamically (replace with your theme file)
#kitty @ set-colors -a "$HOME/.config/kitty/macchiato.conf"

# Path to Kitty config
KITTY_CONF="$HOME/.config/kitty/kitty.conf"

# Change the theme (replace with actual theme name)
echo "include themes/macchiato.conf" >"$KITTY_CONF"

# Change background opacity (0.0 to 1.0)
echo "background_opacity 0.8" >>"$KITTY_CONF"

# Reload Kitty config
kitty @ set-colors --all "$KITTY_CONF"
