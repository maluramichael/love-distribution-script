#!/bin/sh

[ -z "$1" ] && echo "No name supplied" && exit 1

file=love-0.10.2-macosx-x64.zip

if [ ! -f $(pwd)/${file} ]; then
    wget https://bitbucket.org/rude/love/downloads/${file}
fi

if [ ! -d $(pwd)/love.app ]; then
    unzip ${file}
fi

cp -r love.app $1.app