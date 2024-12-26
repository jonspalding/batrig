#!/usr/bin/env bash

set -e

# backup the current configuration - ssh in and zip up directory
ssh pi@batrig.local "cd ~/printer_data/ && zip -r --exclude=*.git* printer-data-backup-\$(date +%Y%m%d%H%M%S).zip config/"

# copy the files to the printer
scp -r ./files/* pi@batrig.local:~/printer_data/config/
