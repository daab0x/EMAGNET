#!/bin/bash

source /etc/emagnet.conf
while :; do
inotifywait -r $EMAGNETHOME/logs/emails-from-pastebin.txt &> /dev/null
cat $EMAGNETHOME/logs/emails-from-pastebin.txt | grep gmail.com
done < $EMAGNETHOME/logs/emails-from-pastebin.txt
