#!/bin/sh

for file in /mnt/user/mediadata/media/temp-processed/*; do
    dir=${file%.mp4}
    mkdir -p "$dir" && mv -i "$file" "$dir"
done
