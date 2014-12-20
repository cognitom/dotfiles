#!/usr/bin/env bash

# SketchTool
mkdir sketchtool_installer
cd sketchtool_installer
curl -L -o temp.zip http://sketchtool.bohemiancoding.com/sketchtool-latest.zip
unzip temp.zip
sh sketchtool/install.sh
cd ../
rm -Rf sketchtool_installer
