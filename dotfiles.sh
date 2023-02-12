#! /usr/bin/zsh

CONFIG_DIR="$HOME/.config"

# Files inside the normal xdg .config directory

xdg_dotfiles=("mpv/input.conf" "ranger/rc.conf" "ranger/rifle.conf")
xdg_dotfiles+=("sway/config" "wofi/style.css" "zathura/zathurarc")
xdg_dotfiles+=("waybar/config" "waybar/style.css")
xdg_dotfiles+=("foot/foot.ini")
xdg_dotfiles+=("mpd/mpd.conf")

for file ($xdg_dotfiles){
    if [[ -f "$file" ]]; then
        rm "$CONFIG_DIR/$file"
    fi
    mkdir -p "$CONFIG_DIR/$(dirname $file)"
    ln -s "$PWD/$file" "$CONFIG_DIR/$file"
}

# Individual configuration files

rm "$HOME/.zshrc"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

rm "$HOME/.vimrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
