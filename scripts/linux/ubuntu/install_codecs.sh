#!/bin/sh

if [ $(id -u) != 0 ]; then
	echo "this script must be run using sudo"
	echo ""
	echo "usage:"
	echo "sudo "$0
	exit $exit_code
   exit 1
fi


if [ "$1" == "-y" ]; then
    FORCE_YES=-y
else
    FORCE_YES=""
fi

GSTREAMER_VERSION=0.10
apt-cache show libgstreamer1.0-dev && GSTREAMER_VERSION=1.0

apt-get install ${FORCE_YES} libmpg123-dev gstreamer${GSTREAMER_VERSION}-plugins-ugly
