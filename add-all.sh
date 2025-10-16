#!/bin/bash

# Script to install files to correct location.
# Probably best to run this with sudo.

find /kubectl/ -type d -exec chmod 755 {} \;
mv ~/kubectl/* ~/usr/bin/
