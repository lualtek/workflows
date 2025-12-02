#!/bin/bash

## Setup the environment for the RAK build and test

set -e

pip3 install clint pyserial setuptools adafruit-nrfutil

# Make sure to cleanup
rm -rf ${HOME}/.arduino15/packages/arduino
# make all our directories we need for files and libraries
mkdir ${HOME}/.arduino15
mkdir ${HOME}/.arduino15/packages
mkdir ${HOME}/Arduino
mkdir ${HOME}/Arduino/libraries



