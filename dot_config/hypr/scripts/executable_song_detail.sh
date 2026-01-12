#!/bin/bash

song_info=$(playerctl metadata --player=spotify --format '{{artist}} — {{title}}')

echo "$song_info"
