#!/bin/sh

set -eu

./patches-clean.sh

for i in patches/??-*.diff; do
    echo "applying (${i%%-*}) ${i}"
    patch -Nu -p1 < "${i}"
done

echo "all done for ${0##*/}"
