#!/bin/bash

for video in assets/videos/*.mp4; do
    filename=$(basename "$video")
    base="${filename%.*}"
    ffmpeg -y -i "$video" -ss 00:00:01.000 -vframes 1 "assets/covers/$base.jpg"
done