#! /bin/bash

# enable case sensitive globbing and access hidden files with dotglob
shopt -s nullglob
shopt -s dotglob


mp3s=( *.MP3 )

if [[ -z "${mp3s[@]}" ]] ; then                                     
        echo "There are no *.MP3 files"
        exit 1
else
        for f in "${mp3s[@]}" ; do
                echo "${f} will be renamed to ${f%.MP3}.mp3" 
                mv -- "$f" "${f%.MP3}.mp3"
        done
fi
