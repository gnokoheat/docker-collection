#!/bin/bash

read -p "Enter a video id: " vi
read -p "Enter a notion page url: " np
read -p "Enter a notion token v2: " nt

NOW=`date '+%Y%m%d%H%M%S'`

curl --location --request POST 'http://localhost:5000/upload' \
--header 'Content-Type: application/json' \
--data-raw '{
    "video_id": "'${vi}'",
    "notion_page_url": "'${np}'",
    "notion_token_v2": "'${nt}'"
}' &>> $NOW.log &