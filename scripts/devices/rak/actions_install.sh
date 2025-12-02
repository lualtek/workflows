#!/bin/bash

## Setup the environment for the RAK build and test

set -e

pip3 install clint pyserial setuptools adafruit-nrfutil
sudo apt-get update
arduino-cli config init > /dev/null
arduino-cli core update-index > /dev/null



