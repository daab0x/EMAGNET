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

clonegit() {
   mkdir -p $EMAGNETCLONE
   banner
   printf  "Enter username of the repo you wanna clone\n"
   read -p "Username: " CLONEUSER
   cd $EMAGNETCLONE
   mkdir $CLONEUSER
   cd $CLONEUSER
   lynx -dump -nonumbers https://github.com/$CLONEUSER?tab=repositories|grep "/$CLONEUSER/"|cut -d'/' -f1,2,3,4,5|uniq|xargs -L1 git clone
   PID=$!
   i=1
   sp="/-\|"
   printf "[+] Please wait..\n[+] Cloning all repos from $user  "
   while [ -d /proc/$PID ]
   do
   printf "\b${sp:i++%${#sp}:1}"
   done
   cat /tmp/.wclaw | xargs -L1 git clone &> /dev/null
   rm /tmp/.wclaw
   printf "\n[+] All repositories from $user has been cloned, hrhr!\n"
}

