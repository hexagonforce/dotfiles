#! /usr/bin/zsh

CONFIG_DIR="$HOME/.config"

xdg_dotfiles=("kitty/kitty.conf" "mpv/input.conf" "ranger/rc.conf" "ranger/rifle.conf")
xdg_dotfiles+=("sway/config" "wofi/style.css" "zathura/zathurarc")

for f ($xdg_dotfiles){
rm "$CONFIG_DIR/$f"
ln -s "$PWD/$f" "$CONFIG_DIR/$f"
}
rm "$HOME/.zshrc"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

