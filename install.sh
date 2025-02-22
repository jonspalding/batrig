#!/usr/bin/env bash

set -e

# backup the current configuration - ssh in and zip up directory
ssh pi@batrig.local "cd ~/printer_data/ && zip -r --exclude=*.git* printer-data-backup-\$(date +%Y%m%d%H%M%S).zip config/"
# ssh pi@batrig.local "cd ~/klipper/klippy/ && zip -r --exclude=*.git* printer-klippy-extras-backup-\$(date +%Y%m%d%H%M%S).zip extras/"

# copy the files to the printer
scp -r ./config/* pi@batrig.local:~/printer_data/config/
# scp -r ./klippy-extras/* pi@batrig.local:~/klipper/klippy/extras
