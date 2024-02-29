#! /usr/bin/zsh

# Files inside the normal xdg .config directory
xdg_dotfiles=("conky" "foot" "git" "kime" "lf" "mpd" "mpv" "ncmpcpp" "nsxiv" "nvim" "sway" "waybar" "wofi" "ytfzf")

CONFIG_HOME=$HOME/.config

stow zsh -t $HOME
for folder in $xdg_dotfiles
do
    mkdir -p $CONFIG_HOME/$folder
    stow $folder -t $CONFIG_HOME/$folder
done
