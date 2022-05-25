#!/bin/bash

shopt -s dotglob
for d in /mnt/user/mediadata/usenet/tv/*/
do
        find "$d" -type f -exec mv -i -t "$d" {} +
        find "$d" -mindepth 1 -type d -delete
        find "$d" -mindepth 1 -type f  ! -name "*.?*" -delete
        find "$d" -empty -type d -delete
        find "$d" -type f -name "*sample*" -delete
        find "$d" -type d -ctime +2 -exec rm -rf {} \;
done

for d in /mnt/user/mediadata/usenet/movies/*/
do
        find "$d" -type f -exec mv -i -t "$d" {} +
        find "$d" -mindepth 1 -type d -delete
        find "$d" -mindepth 1 -type f  ! -name "*.?*" -delete
        find "$d" -empty -type d -delete
        find "$d" -type f -name "*sample*" -delete
        find "$d" -type d -ctime +2 -exec rm -rf {} \;
done

for d in /mnt/user/mediadata/usenet/music/*/
do
        find "$d" -type f -exec mv -i -t "$d" {} +
        find "$d" -mindepth 1 -type d -delete
        find "$d" -mindepth 1 -type f  ! -name "*.?*" -delete
        find "$d" -empty -type d -delete
        find "$d" -type f -name "*sample*" -delete
        find "$d" -type d -ctime +2 -exec rm -rf {} \;
done

for d in /mnt/user/mediadata/torrents/tv/*/
do
        find "$d" -type f -exec mv -i -t "$d" {} +
        find "$d" -mindepth 1 -type d -delete
        find "$d" -mindepth 1 -type f  ! -name "*.?*" -delete
        find "$d" -empty -type d -delete
        find "$d" -type f -name "*sample*" -delete
        find "$d" -type d -ctime +2 -exec rm -rf {} \;
done

for d in /mnt/user/mediadata/torrents/movies/*/
do
        find "$d" -type f -exec mv -i -t "$d" {} +
        find "$d" -mindepth 1 -type d -delete
        find "$d" -mindepth 1 -type f  ! -name "*.?*" -delete
        find "$d" -empty -type d -delete
        find "$d" -type f -name "*sample*" -delete
        find "$d" -type d -ctime +2 -exec rm -rf {} \;
done

for d in /mnt/user/mediadata/torrents/music/*/
do
        find "$d" -type f -exec mv -i -t "$d" {} +
        find "$d" -mindepth 1 -type d -delete
        find "$d" -mindepth 1 -type f  ! -name "*.?*" -delete
        find "$d" -empty -type d -delete
        find "$d" -type f -name "*sample*" -delete
        find "$d" -type d -ctime +2 -exec rm -rf {} \;
done

        #filename=
        #ext="${file##*.}"
        #find "$d" -type f -exec bash -c ' DIR=$( dirname "{}"  ); mv "{}" "$DIR"/"${DIR##*/}"."$ext"  ' \;