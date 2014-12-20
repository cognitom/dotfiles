#!/usr/bin/env bash

mkdir sketchtool_installer
cd sketchtool_installer
curl -L -o temp.zip http://sketchtool.bohemiancoding.com/sketchtool-latest.zip
unzip temp.zip
cd sketchtool
sh ./install.sh
cd ../../
rm -Rf sketchtool_installer
