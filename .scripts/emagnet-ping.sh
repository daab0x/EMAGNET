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


read -p "Hostname/IP: " HOSTIP
IP="$(echo $HOSTIP | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+')"
if [[ -z $IP ]]; then
HOST=$(lynx -dump https://downforeveryoneorjustme.com/$HOSTIP | grep "It's just you")
DOT="[.]"
if [[ $HOSTIP =~ $DOT ]]; then
 if [[ -n $HOST ]]; then
     printf "It seems $HOSTIP is up from here :)\n"
 else 
     printf "It seems $HOSTIP is down from here :/\n"
 fi
else
    printf "That's not a valid target..:/\n" 
    exit
fi
else

if [[ -z $(timeout 1 ping -c1 $HOSTIP) ]]; then
     printf "It seems $HOSTIP is down from here :/\n"
 else 
     printf "It seems $HOSTIP is up from here :)\n"
fi
fi
