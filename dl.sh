#!/usr/bin/env bash
RETRY_SEC="600s"
cd $HOME/playground/youtube-dl
until python -m youtube_dl --username "xxxxxxxx" --password "xxxxxxx" --verbose --min-sleep-interval 600 --max-sleep-interval 900 --no-call-home --output '$HOME/tuts/lessons/%(playlist)s/%(chapter_number)s - %(chapter)s/%(autonumber)s - %(title)s.%(ext)s' --verbose --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36" --retries 1 --fragment-retries 1 --limit-rate 256K $1
# until asdf
do
  echo "Retrying in ${RETRY_SEC}....";
  sleep $RETRY_SEC;
done

