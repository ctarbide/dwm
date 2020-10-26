#!/bin/sh

set -eu

# reset index
git read-tree patches

# stage important changes
git add --all patches-clean.sh patches-apply.sh patches

# discard all other changes
git checkout .

# list here the files you want to keep between runs of
# patches-apply.sh
git clean -dxf \
    -e /.vscode

echo "all done for ${0##*/}"
