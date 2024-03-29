#!/bin/bash

## Setup the environment for the RAK build and test

set -e

pip3 install clint pyserial setuptools adafruit-nrfutil
sudo apt-get update

# make all our directories we need for files and libraries
mkdir ${HOME}/.arduino15
mkdir ${HOME}/.arduino15/packages
mkdir ${HOME}/Arduino
mkdir ${HOME}/Arduino/libraries

# # install arduino IDE
export PATH=$PATH:$GITHUB_WORKSPACE/bin
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh -s 0.11.0 2>&1
arduino-cli config init > /dev/null
arduino-cli core update-index > /dev/null



