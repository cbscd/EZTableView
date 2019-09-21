#!/bin/sh
BASEFOLDER=${PROJECT_DIR}

if [ ! -d "${BASEFOLDER}" ]; then
	BASEFOLDER=`pwd`
fi

# Resets the build version number to 0. DO NOT CHANGE THIS.
./Scripts/bots/update-version.sh --plist=${INFOPLIST_FILE} --build=0 -i
