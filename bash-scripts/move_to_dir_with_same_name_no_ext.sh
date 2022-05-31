#!/bin/sh

for file in /mnt/user/mediadata/media/4k/movies/*; do
    dir=${file%.mp4}
    mkdir -p "$dir" && mv -i "$file" "$dir"
done
