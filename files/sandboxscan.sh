#!/bin/bash

./twistcli sandbox --u $TL_USER --p $TL_PASS --address https://$TL_CONSOLE --output-file "sandbox.json" --analysis-duration 1m itresoldi/evilpetclinic:latest

if $? == 0 then
   echo "Image Vulnerability scan passed!"
   exit 0
else
   echo "Image Vulnerability scan failed!"
   exit 1
fi
