#! /usr/bin/zsh

# Files inside the normal xdg .config directory

xdg_dotfiles=("mpv/input.conf")
xdg_dotfiles+=("ranger/rc.conf" "ranger/rifle.conf")
xdg_dotfiles+=("sway/config")
xdg_dotfiles+=("wofi/style.css")
xdg_dotfiles+=("zathura/zathurarc")
xdg_dotfiles+=("waybar/config" "waybar/style.css")
xdg_dotfiles+=("foot/foot.ini")
xdg_dotfiles+=("mpd/mpd.conf")
xdg_dotfiles+=("nvim/init.lua")

CONFIG_HOME=$HOME/.config
for file ($xdg_dotfiles){
    if [[ -f "$CONFIG_HOME/$file" ]]; then
        rm "$CONFIG_HOME/$file"
    fi
    mkdir -p "$CONFIG_HOME/$(dirname $file)"
    ln -s "$PWD/$file" "$CONFIG_HOME/$file"
}

# Individual configuration files

rm "$HOME/.zshrc"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

rm "$HOME/.gitconfig"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
