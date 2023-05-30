#!/bin/bash

directory="/home/S/test/permissions"

while true; do

find "$directory" -type f -exec chmod 660 {} \;

find "$directory" -type d -exec chmod 770 {} \;

sleep 5

done
