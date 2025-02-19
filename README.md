# Get a YOUTUBE channel sorted in folders by albums with yt-dlp

As chat GPT told me here https://chatgpt.com/share/67b622fd-bd40-800d-a6ba-a5155fc2e62a
  on my prompt: "github.com yt-dlp whole channel by albums"
ChatGPT said:
  Pokud chceš pomocí yt-dlp stáhnout celý kanál YouTube a zároveň roztřídit videa podle alb (playlistů), můžeš použít následující příkaz:

```
#!/bin/bash
yt-dlp -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" -f best -ciw --download-archive archive.txt --merge-output-format mp4 --embed-metadata --embed-thumbnail --add-metadata --write-description --write-info-json --write-thumbnail "https://www.youtube.com/c/KANAL_URL"
```

Vysvětlení parametrů:
  -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" → Ukládá videa do složek podle playlistu (alba).
  -f best → Stáhne nejlepší dostupnou kvalitu videa.
  -ciw → Pokračuje ve stahování i při chybách, nepřepisuje existující soubory.
  --download-archive archive.txt → Ukládá stažená videa do archivu, aby se nestahovala znovu.
  --merge-output-format mp4 → Spojí stažené soubory do MP4, pokud je třeba.
  --embed-metadata a --add-metadata → Přidává metadata do videa.
  --embed-thumbnail → Přidá miniaturu jako obal videa.
  --write-description, --write-info-json, --write-thumbnail → Stáhne popis videa, metadata a miniaturu.
  "https://www.youtube.com/c/KANAL_URL" → Nahraď URL odkazem na kanál.

Tento příkaz rozdělí videa podle playlistů (alb). Pokud chceš videa bez playlistů do jedné složky, použij:

bash
Copy
Edit
yt-dlp -o "%(uploader)s/%(upload_date)s - %(title)s.%(ext)s" ...
Chceš i nějaké další úpravy, například konverzi do MP3 nebo organizaci podle interpretů? 🚀







Suggested

How can I ensure yt-dlp downloads videos in the correct album order?

Is there a way to filter downloads by specific playlists within a channel?

Can yt-dlp automatically convert the files to MP3 and keep the album structure?

How do I avoid downloading duplicate videos from the same channel?
