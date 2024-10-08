#!/usr/bin/env bash

# Menu options
ARCHIVE="SWAY
FOOT
BEMENU
LF
WAYBAR
SWAYLOCK
ZSH
NEOVIM
GTK-SETTINGS
MAKO"
CHOICE=$(printf "$ARCHIVE" | bemenu_runner -n -B1 -l9 -H0 -p "Edit settings:")

# Launch nvim on with foot as floating window
TERMCMD=("foot -a floatterm")

case $CHOICE in
BEMENU) $TERMCMD -e nvim $HOME/.local/bin/bemenu_runner ;;
FOOT) $TERMCMD -e nvim $HOME/.config/foot/foot.ini ;;
GTK-SETTINGS) nwg-look ;;
LF) $TERMCMD -e nvim $HOME/.config/lf/lfrc ;;
MAKO) $TERMCMD -e nvim $HOME/.config/mako/config ;;
NEOVIM) $TERMCMD -e nvim $HOME/.config/nvim/init.lua ;;
SWAY) $TERMCMD -e nvim $HOME/.config/sway/config ;;
SWAYLOCK) $TERMCMD -e nvim $HOME/.config/swaylock/config ;;
WAYBAR) $TERMCMD -e nvim $HOME/.config/waybar/config.jsonc ;;
ZSH) $TERMCMD -e nvim $HOME/.config/zsh/.zshrc ;;
esac
