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

mirrorwww() {
mkdir -p $EMAGNETMIRROR/wmirror
target_path="$EMAGNETHOME/wmirror"
banner  
read -p "Site To Mirror: " mirror
wget  -qnc -e robots=off -r -r -p -U Mozilla $mirror -P $EMAGNETMIRROR &
PID=$!
i=1
sp="/-\|"
printf "Please wait, mirroring $mirror  "
while [ -d /proc/$PID ]
do
printf "\b${sp:i++%${#sp}:1}"
done    
printf "\n$site has been mirrored, hrhr!\n"

}
