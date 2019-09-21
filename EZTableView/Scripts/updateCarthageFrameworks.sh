#!/bin/sh
SRCROOT=`git rev-parse --show-toplevel`
echo "$SRCROOT"

#echo "Pulling from remote for submodules..."
#git submodule update --init --recursive
#git pull --recurse-submodules

cd "$SRCROOT/EZTableView"

echo "Removing Carthage cache"
rm -rf ~/Library/Caches/org.carthage.CarthageKit

echo "Updating Carthage dependencies..."
carthage update --platform iOS

echo "Done"
