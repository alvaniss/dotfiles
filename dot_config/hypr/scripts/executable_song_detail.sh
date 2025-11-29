#!/bin/bash

song_info=$(playerctl metadata --player=firefox --format '{{artist}} — {{title}}')

echo "$song_info"
