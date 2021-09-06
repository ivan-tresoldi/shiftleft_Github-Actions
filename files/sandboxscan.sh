#!/bin/bash

sudo ./twistcli sandbox -u $TL_USER -p $TL_PASS --address https://$TL_CONSOLE --output-file "sandbox.json" --analysis-duration 1m itresoldi/evilpetclinic:latest

echo "Exit status is"
status = $?

if [ $status -ne 0 ] || [ $BYPASS_SANDBOX -eq 0 ]; then
   echo "Image Vulnerability scan failed!"
   exit 1
else
   echo "Image Vulnerability scan succeeded!"
   exit 0
fi
