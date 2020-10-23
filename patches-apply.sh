#!/bin/sh

set -eu

git read-tree patches

git clean -dxf \
    -e /patches \
    -e /patches-apply.sh \
    -e /.vscode

make config.h

for i in patches/*.diff; do
    patch -Nu -p1 < "${i}"
done

echo all done
