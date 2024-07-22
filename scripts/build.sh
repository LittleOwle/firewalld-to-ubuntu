#!/bin/env bash

FIREWALLD_VERSION=v2.2.0

EXTERNALS_SOURCE_FOLDER=/opt/owle-externals/source/firewalld
EXTERNALS_BUILD_FOLDER=/opt/owle-externals/build/firewalld

apt update
apt install gettext intltool xmlto git

mkdir -p $EXTERNALS_SOURCE_FOLDER
mkdir -p $EXTERNALS_BUILD_FOLDER

# FirewallD ${FIREWALLD_VERSION}
git clone https://github.com/firewalld/firewalld.git $EXTERNALS_SOURCE_FOLDER
cd $EXTERNALS_SOURCE_FOLDER
git checkout ${FIREWALLD_VERSION}
./autogen.sh
./configure --prefix=$EXTERNALS_BUILD_FOLDER
make
make install

exit 0
