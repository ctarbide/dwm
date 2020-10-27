#!/bin/sh
set -eu
trap "" HUP
exec env OUTPUT=/tmp/scrot.png scrot.sh -o -e 'xclip -selection clipboard -target image/png -i $f' "$@"
