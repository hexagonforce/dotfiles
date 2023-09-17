#! /usr/bin/zsh

# Files inside the normal xdg .config directory
xdg_dotfiles=("mpv" "ranger" "sway" "waybar" "wofi" "alacritty" "zathura" "mpd" "nvim" "qutebrowser" "newsboat" "nomacs")

CONFIG_HOME=$HOME/.config
for folder ($xdg_dotfiles){
    if [[ -d "$CONFIG_HOME/$folder" ]]; then
        rm -r "$CONFIG_HOME/$folder"
    fi
    ln -s "$PWD/$folder" "$CONFIG_HOME/"
}


# Individual configuration files

dotfiles=("zshrc" "zshenv" "gitconfig")
for file ($dotfiles){
    if [[ -f "$HOME/.$file" ]]; then
        rm "$HOME/.$file"
    fi
    ln -s "$PWD/$file" "$HOME/.$file"
}

