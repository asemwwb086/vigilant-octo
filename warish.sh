#!/bin/sh
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cp rclone-*-linux-amd64/rclone .
rm -rf rclone-*
chmod +x rclone

curl -sLO $CONF

./rclone serve http combine: \
    --config=rclone.conf \
    --read-only \
    --addr=:$PORT \
    --user=$USER \
    --pass=$PASS \
    --template=index.html \
    --vfs-cache-mode=writes \
    --vfs-cache-max-age=1m0s \
    --buffer-size=64M
