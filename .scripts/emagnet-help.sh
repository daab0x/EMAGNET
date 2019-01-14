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

help() {
cat << "EOF"
emagnet - is a tool that using the web browser lynx for all features

  where :
      -b BACKUPS  - Compress and backup emagnet's files
      -c CLONE    - Clone all repositories from a user on git
      -h HELP     - Print this help
      -H DOWNLOAD - Download uploads on pastebin in background
      -e EMAGNET  - Run emagnet until you find atleast 1 email address, then stop
      -f FOREVER  - Run emagnet until you will kill emagnet.
      -n NETCAT   - Upload anything to nr1.nu, eg: echo hello | emagnet -n
      -m MIRROR   - Mirror any website and download all data that is possible
      -p PING     - Is host up or down, if there is a website then we check with lynx otherwise for ipv4 we ping
      -s SPIDER   - This is a rare spider that collects ALL urls via lynx
      -v VERSION  - Print current version

EOF
}

