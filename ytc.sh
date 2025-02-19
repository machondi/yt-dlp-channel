# FROM https://chatgpt.com/canvas/shared/67b624fbf6fc8191bd54ce2c233d6df4

#!/bin/bash

# Kontrola, zda byl zadán argument
if [ "$#" -ne 1 ]; then
    echo "Použití: $0 <URL_KANÁLU>"
    exit 1
fi

CHANNEL_URL="$1"

# Spuštění yt-dlp s organizací do alb (playlistů)
yt-dlp -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" \
       -f best -ciw --download-archive archive.txt \
       --merge-output-format mp4 --embed-metadata --embed-thumbnail \
       --add-metadata --write-description --write-info-json --write-thumbnail \
       "$CHANNEL_URL"

echo "Stahování dokončeno!"
