#!/bin/bash

# Color codes
NORMAL='\033[0;39m'
GREEN='\033[1;32m'
RED='\033[1;31m'
WHITE='\033[1;37m'
YELLOW='\033[1;33m'

WORKDIR=$(pwd)
FILENAME='com.freestylelibre.app.de_2019-04-22'

echo -e "${WHITE}Installiere benötigte Tools ...${NORMAL}"

sudo pacman -S git wget
yay -S android-sdk android-sdk-build-tools

sudo ln -s /opt/android-sdk/build-tools/29.0.2/apksigner /usr/local/bin/apksigner
sudo ln -s /opt/android-sdk/build-tools/29.0.2/zipalign /usr/local/bin/zipalign

if [ $? = 0 ]; then
  echo -e "${GREEN}  okay.${NORMAL}"
  echo
else
  echo -e "${RED}  nicht okay.${NORMAL}"
  echo
  echo -e "${YELLOW}=> Bitte prüfen Sie o.a. Fehler.${NORMAL}"
  exit 1
fi
