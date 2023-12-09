#!/bin/sh

case "$(file -Lb --mime-type -- "$1")" in
    image/*)
        chafa -f sixel -s "$2x$3" --animate false -c full --optimize=2 "$1"
        exit 1
        ;;
    *)
        cat "$1"
        ;;
esac
