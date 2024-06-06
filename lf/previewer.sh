#!/bin/sh

file="$1"

case "$(file -Lb --mime-type -- "$file")" in
    image/*)
        exiftool "$1" && exit 0;;
    video/*)
        exiftool "$1" && exit 0;;
esac

file -Lb -- "$1" | fold -s -w "$width"
exit 0
