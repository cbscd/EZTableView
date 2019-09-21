#!/bin/sh
BASEFOLDER=${PROJECT_DIR}

if [ ! -d "${BASEFOLDER}" ]; then
	BASEFOLDER=`pwd`
fi

# Resets the build version number to 0. DO NOT CHANGE THIS.
./Scripts/bots/update-version.sh --build=0 -i
