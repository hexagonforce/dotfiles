#! /usr/bin/zsh

CONFIG_DIR="$HOME/.config"

# Files inside the normal xdg .config directory

xdg_dotfiles=("mpv/input.conf" "ranger/rc.conf" "ranger/rifle.conf")
xdg_dotfiles+=("sway/config" "wofi/style.css" "zathura/zathurarc")
xdg_dotfiles+=("foot/foot.ini")

for f ($xdg_dotfiles){
rm "$CONFIG_DIR/$f"
mkdir -p "$CONFIG_DIR/$(dirname $f)"
ln -s "$PWD/$f" "$CONFIG_DIR/$f"
}

# Individual configuration files

rm "$HOME/.zshrc"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

rm "$HOME/.vimrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
