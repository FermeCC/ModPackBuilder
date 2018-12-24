#!/usr/bin/env bash

for f in mods/*
do
    echo "Working on ${f}"
    VERSION=`unzip -p $f modDesc.xml | xmlstarlet sel -t -m "/modDesc" -v version`

    if [ $? -ne 0 ]; then
        echo "Skipped, received an error while trying to determine version"
    else
        echo " * ${f} (v${VERSION})" >> $1
    fi
done
