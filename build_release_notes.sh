#!/usr/bin/env bash

for f in mods/*
do
    VERSION=`unzip -c $f modDesc.xml | xmlstarlet sel -t -c "/modDesc/version"`
    echo " * $f (v${VERSION})" >> $1
done
