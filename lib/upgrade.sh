#!/bin/bash

# Get the old version and TAG.
oldVersion=$(cat api/version.txt)
oldTag=$(cat api/tag.txt)

# Get the newest TAG.
newTag=$(curl https://api.github.com/repos/matsuridayo/nekoray/tags -k | grep 'name' | cut -d\" -f4 | head -1)
if [ -z "$newVersion" ]; then
    echo "Didn't get the newest TAG!"
    exit 1
fi


if [ "$newTag" == "$oldVersion" ]; then
    exit 0
fi

newVersion=$(curl https://raw.githubusercontent.com/MatsuriDayo/nekoray/main/nekoray_version.txt)

# Change the file.
sed -i "s/${oldTag}/${newTag}/g" Casks/nekoray.rub
sed -i "s/${oldTag}/${newTag}/g" api/tag.txt

sed -i "s/${oldVersion}/${newVersion}/g" Casks/nekoray.rub
sed -i "s/${oldVersion}/${newVersion}/g" api/version.txt