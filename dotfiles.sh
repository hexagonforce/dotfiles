#! /usr/bin/zsh

# Files inside the normal xdg .config directory
xdg_dotfiles=("mpv" "ranger" "sway" "wofi" "zathura" "waybar" "foot" "mpd" "nvim" "qutebrowser" "hypr" "kitty" "newsboat")

CONFIG_HOME=$HOME/.config
for folder ($xdg_dotfiles){
    if [[ -d "$CONFIG_HOME/$folder" ]]; then
        rm -r "$CONFIG_HOME/$folder"
    fi
    ln -s "$PWD/$folder" "$CONFIG_HOME/"
}

ln -s "$PWD/Vieb/viebrc" "$CONFIG_HOME/Vieb/viebrc"

# Individual configuration files

dotfiles=("zshrc" "zshenv" "gitconfig")
for file ($dotfiles){
    if [[ -f "$HOME/.$file" ]]; then
        rm "$HOME/.$file"
    fi
    ln -s "$PWD/$file" "$HOME/.$file"
}

