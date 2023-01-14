#! /usr/bin/zsh

CONFIG_DIR="$HOME/.config"

# Files inside the normal xdg .config directory

xdg_dotfiles=("kitty/kitty.conf" "mpv/input.conf" "ranger/rc.conf" "ranger/rifle.conf")
xdg_dotfiles+=("qutebrowser/config.py" "qutebrowser/quickmarks")
xdg_dotfiles+=("sway/config" "wofi/style.css" "zathura/zathurarc")

for f ($xdg_dotfiles){
rm "$CONFIG_DIR/$f"
ln -s "$PWD/$f" "$CONFIG_DIR/$f"
}

# Individual configuration files

rm "$HOME/.zshrc"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

