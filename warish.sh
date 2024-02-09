#!/bin/sh

wget -q $CONF

rclone serve http combine: \
    --config=rclone.conf \
    --read-only \
    --addr=:$PORT \
    --user=$USER \
    --pass=$PASS \
    --template=index.html \
    --vfs-cache-mode=writes \
    --vfs-cache-max-age=1m0s \
    --buffer-size=64M
