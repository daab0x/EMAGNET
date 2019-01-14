#!/bin/bash
####
#### Copyright (C) 2019  wuseman <wuseman@nr1.nu> - All Rights Reserved
#### Ascii made by TISSUE.
#### Created: 12/12/2018
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



DISTRO=$(cat /etc/*release | head -n 1 | awk '{ print tolower($1) }' | cut -d= -f2)



NETCAT="/usr/bin/nc"
LYNX="/usr/bin/lynx"
WGET="/usr/bin/wget"
CURL="/usr/bin/curl"
SCREEN="/usr/bin/screen"
checkwget() {
if [[ ! -x  $WGET ]]; then
read -p "wget is required for emagnet, do you want to install wget (y/N): " installwget
 case $installwget in
   y) if [[ $DISTRO = "gentoo" ]]; then emerge --ask wget;exit 0;fi
      if [[ $DISTRO = "sabayon" ]]; then emerge --ask wget;exit 0;fi
      if [[ $DISTRO = "ubuntu" ]]; then apt-get install wget -qq -y; exit 0;fi
      if [[ $DISTRO = "debian" ]]; then apt-get install wget;exit 0;fi
      if [[ $DISTRO = "mint" ]]; then apt-get install wget;exit 0;fi
      if [[ -n $DISTRO ]]; then echo "Emagnet is not supported for $DISTRO, please install wget manually."; exit 0; fi ;;
   N) exit 0 ;;
   \?) echo "Please enter a proper answer y=yes N=no" ;;
esac
fi
}

checkcurl() {
if [[ ! -x  $CURL ]]; then
read -p "curl is required for emagnet, do you want to install curl (y/N): " installcurl
 case $installcurl in
   *) if [[ $DISTRO = "gentoo" ]]; then emerge --ask curl;exit 0;fi
      if [[ $DISTRO = "sabayon" ]]; then emerge --ask curl;exit 0;fi
      if [[ $DISTRO = "ubuntu" ]]; then apt-get install curl -qq -y; exit 0;fi
      if [[ $DISTRO = "debian" ]]; then apt-get install curl;exit 0;fi
      if [[ $DISTRO = "mint" ]]; then apt-get install curl;exit 0;fi
      if [[ -n $DISTRO ]]; then echo "Emagnet is not supported for $DISTRO, please install curl manually."; exit 0; fi ;;
   N) exit 0 ;;
   \?) echo "Please enter a proper answer y=yes N=no" ;;
 esac
fi
}

checkscreen() {
if [[ ! -x  $SCREEN ]]; then
read -p "screen is required for emagnet, do you want to install screen (y/N): " installscreen
 case $installscreen in
   *) if [[ $DISTRO = "gentoo" ]]; then emerge --ask app-misc/screen;exit 0;fi
      if [[ $DISTRO = "sabayon" ]]; then emerge --ask app-misc/screen;exit 0;fi
      if [[ $DISTRO = "ubuntu" ]]; then apt-get install screen -qq -y; exit 0;fi
      if [[ $DISTRO = "debian" ]]; then apt-get install screen;exit 0;fi
      if [[ $DISTRO = "mint" ]]; then apt-get install screen;exit 0;fi
      if [[ -n $DISTRO ]]; then echo "Emagnet is not supported for $DISTRO, please install screen manually."; exit 0; fi ;;
   N) exit 0 ;;
   \?) echo "Please enter a proper answer y=yes N=no" ;;
 esac
fi
}

checklynx() {
if [[ ! -x  $LYNX ]]; then
read -p "lynx is required for emagnet, do you want to install lynx (y/N): " installlynx
 case $installlynx in
   y) if [[ $DISTRO = "gentoo" ]]; then emerge --ask lynx;exit 0;fi
      if [[ $DISTRO = "sabayon" ]]; then emerge --ask lynx;exit 0;fi
      if [[ $DISTRO = "ubuntu" ]]; then apt-get install lynx -qq -y; exit 0;fi
      if [[ $DISTRO = "debian" ]]; then apt-get install lynx;exit 0;fi
      if [[ $DISTRO = "mint" ]]; then apt-get install lynx;exit 0;fi
      if [[ -n $DISTRO ]]; then echo "Emagnet is not supported for $DISTRO, please install lynx manually."; exit 0; fi ;;
  N) exit 0 ;;
  \?) echo "Please enter a proper answer y=yes N=no" ;;
 esac
fi
}

checknetcat() {
if [[ ! -x  $NETCAT ]]; then
read -p "necat is required for upload to nr1.nu, do you want to install netcat (y/N): " installlynx
 case $installlynx in
   y) if [[ $DISTRO = "gentoo" ]]; then emerge --ask netcat;exit 0;fi
      if [[ $DISTRO = "sabayon" ]]; then emerge --ask netcat;exit 0;fi
      if [[ $DISTRO = "ubuntu" ]]; then apt-get install netcat -qq -y; exit 0;fi
      if [[ $DISTRO = "debian" ]]; then apt-get install netcat;exit 0;fi
      if [[ $DISTRO = "mint" ]]; then apt-get install netcat;exit 0;fi
      if [[ -n $DISTRO ]]; then echo "Emagnet is not supported for $DISTRO, please install netcat manually."; exit 0; fi ;;
  N) exit 0 ;;
  \?) echo "Please enter a proper answer y=yes N=no" ;;
 esac
fi
}

