#!/usr/bin/env bash

for f in mods/*
do
    echo "Working on ${f}"

    VERSION=`unzip -p $f modDesc.xml | xmlstarlet sel -t -m "/modDesc" -v version`
    if [ $? -ne 0 ]; then
        echo "Received an error while trying to determine version"
        VERSION="???"
    fi

    NOTES=`grep -Fxq "## ${f##*/}" NOTES.md && echo "*"`

    echo " * ${f} (v${VERSION})${NOTES}" >> $1
done
