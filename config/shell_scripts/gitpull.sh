#!/bin/bash

# create restore point
cp -R /config /config.backup

# update the config
cd /config
git pull origin master

# test configuration
python3 -m hass --config /config --script check_config
rm -rf /config.backup

exit