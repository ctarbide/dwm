#!/bin/sh

set -eu

# reset index
git read-tree patches

# stage important changes
git add --all patches-clean.sh patches-apply.sh patches

# discard all other changes
git checkout .

git clean -dxf \
    -e /patches \
    -e /patches-apply.sh \
    -e /.vscode

echo "all done for ${0##*/}"
