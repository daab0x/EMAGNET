#!/bin/bash
####
#### Copyright (C) 2019  wuseman <wuseman@nr1.nu> - All Rights Reserved
#### Ascii made by TISSUE.
#### Created: 14/01/2019
####


#########################################
############# SOURCE CODE ###############
#########################################
##### EMAGNET WAS FOUNDED BY WUSEMAN ####
#########################################
################ 2o18 ###################
#########################################
####                                 ####
#### EMAGNET SOURCE CODE BEGINS HERE ####
#### FEEL FREE TO USE AND PLAY WITH  ####
#### EMAGNET AS YOU WISH ASLONG AS   ####
#### ORIGIN AUTHOR WILL BE MENTIONED ####
####                                 ####
#########################################
#########################################

source /etc/emagnet.conf

spider() {
banner
printf "Emagnet Spider will bring you all urls you never thought was possible\n\n"
read -p "Site (domain only eg: google.com): " s
echo ""
printf ""

spinner() {
PID=$!
i=1
sp="/-\|"
printf "Please wait..\nGathering all urls from $s   "
while [ -d /proc/$PID ]
do
printf "\b${sp:i++%${#sp}:1}"
done
}

spider() {
mkdir -p $EMAGNETSPIDER
cd $EMAGNETSPIDER
lynx -listonly -nonumbers -dump https://www.$s | grep -o http.* > /tmp/.emagnet-spider
while read line; do
lynx -listonly -nonumbers -dump $line >> $s-urls.temp.txt
done < /tmp/.emagnet-spider
cat /tmp/.emagnet-spider  | grep -o -a http.* | awk -F, '!a[$1]++' > $s-urls.txt
}

spider &
spinner
}

