#! /usr/bin/zsh

# Files inside the normal xdg .config directory
xdg_dotfiles=("conky" "fcitx5" "foot" "git" "lf" "mpd" "mpv" "ncmpcpp" "nsxiv" "nvim" "sway" "waybar" "wofi" "ytfzf")

FIREFOX_DEFAULT_PROFILE_NAME=$(./find_default_firefox_profile.py)
CONFIG_HOME=$HOME/.config

stow zsh -t $HOME
stow firefox -t "$HOME/.mozilla/firefox/$FIREFOX_DEFAULT_PROFILE_NAME"
for folder in $xdg_dotfiles
do
    mkdir -p $CONFIG_HOME/$folder
    stow $folder -t $CONFIG_HOME/$folder
done
