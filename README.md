# dotfiles for any fedora hexagon-device

## Requirements
zsh
sway
ranger
foot
fcitx5
fcitx5-hangul
mpv
mpd
wofi
zathura
nvim
git



## Usage
Run `./dotfiles.sh`.

## Additional setup for Korean support
- Install fcitx5
- Append the following lines to `/etc/environment`:
```
INPUT_METHOD=fcitx
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
GLFW_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
IMSETTINGS_MODULE=fcitx
```

This will enable the use of Korean input in most applications.
