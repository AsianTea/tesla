#!/bin/bash

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin

# Prevent the car from grabbing new fw updates

if grep --quiet firmware.vn.teslamotors.com /etc/hosts; then
  echo "Block in Place"
else
  echo "Adding block"
  echo "0.0.0.0 firmware.vn.teslamotors.com"  >> /etc/hosts
fi
