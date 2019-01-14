#!/bin/bash
####
#### Copyright (C) 2019  wuseman <wuseman@nr1.nu> - All Rights Reserved
#### Ascii made by TISSUE.
#### Created: 12/12/2019
#### Last revised 14/01/2019
#### Usage: ./emagnet -option
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

CONF=/etc/emagnet.conf
EMAGNET="emagnet"


if [[ $(cat $CONF  | grep DEBUG_ENABLE= | cut -d= -f2) = "true" ]]; then
 if [[ "$(cat $EMAGNET  | sed -n '26p')" = "set -x" ]]; then
    sleep 0
 else
    echo "Debug mode has been enable"
    sed -i '26i set -x' emagnet
 fi
fi

if [[ $(cat $CONF | grep DEBUG_ENABLE= | cut -d= -f2) = "false" ]]; then
 if [[ "$(cat $EMAGNET  | sed -n '26p')" = "set -x" ]]; then
    echo "Debug mode has been disable"
    sed -i 's/set -x//g' emagnet
else
    sleep 0
fi
fi
