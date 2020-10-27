#!/bin/sh
set -eu
trap "" HUP
OUTPUT=${OUTPUT:-${HOME}/Pictures/`date +'Screenshot_from_%Y-%m-%d_%H-%M-%S.png'`}
exec scrot "$@" "${OUTPUT}"
