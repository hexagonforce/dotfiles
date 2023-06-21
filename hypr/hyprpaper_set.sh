#! /usr/bin/bash
index=0
switch_wallpaper () {
    monitor="eDP-1"
    wallpaper_dir="$HOME/Pictures/wallpapers"
    files=($wallpaper_dir/*)
    nfiles=${#files[@]}
    index=$index+1
    if [[ $index -eq $nfiles ]]
    then
        index=0
    fi
    random_file=("${files[index]}")
    hyprctl hyprpaper wallpaper "$monitor,$random_file"
}

while sleep 3600s
do
    switch_wallpaper
done
