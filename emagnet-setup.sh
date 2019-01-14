#!/bin/bash
#### Copyright (C) 2018  wuseman <wuseman@nr1.nu> - All Rights Reserved
#### Ascii made by TISSUE.
#### Created: 12/12/2018
#### Last revised 26/12/2018
#### Usage: ./emagnet-setup.sh
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

if [[ $EUID -gt "0" ]]; then
   printf "Root privileges is required for this tool..\n"
   exit 0
fi

#if [[ ! -f /etc/emagnet.conf ]]; then
#   printf "Copied emagnet.conf into /etc\nYou must set paths in emagnet.conf before you run emagnet"
#   cp .emagnetconf/emagnet.conf  /etc/
#fi

banner() {
cat << "EOF"
     _                      _______                      _
  _dMMMb._              .adOOOOOOOOOba.              _,dMMMb_
 dP'  ~YMMb            dOOOOOOOOOOOOOOOb            aMMP~  `Yb
 V      ~"Mb          dOOOOOOOOOOOOOOOOOb          dM"~      V
          `Mb.       dOOOOOOOOOOOOOOOOOOOb       ,dM'
           `YMb._   |OOOOOOOOOOOOOOOOOOOOO|   _,dMP'
      __     `YMMM| OP'~"YOOOOOOOOOOOP"~`YO |MMMP'     __
    ,dMMMb.     ~~' OO     `YOOOOOP'     OO `~~     ,dMMMb.
 _,dP~  `YMba_      OOb      `OOO'      dOO      _aMMP'  ~Yb._

             `YMMMM\`OOOo     OOO     oOOO'/MMMMP'
     ,aa.     `~YMMb `OOOb._,dOOOb._,dOOO'dMMP~'       ,aa.
   ,dMYYMba._         `OOOOOOOOOOOOOOOOO'          _,adMYYMb.
  ,MP'   `YMMba._      OOOOOOOOOOOOOOOOO       _,adMMP'   `YM.
  MP'        ~YMMMba._ YOOOOPVVVVVYOOOOP  _,adMMMMP~       `YM
  YMb           ~YMMMM\`OOOOI`````IOOOOO'/MMMMP~           dMP
   `Mb.           `YMMMb`OOOI,,,,,IOOOO'dMMMP'           ,dM'
     `'                  `OObNNNNNdOO'                   `'
                           `~OOOOO~'

=====================================================================

EOF
}

CONF=".emagnetconf/emagnet.conf "

wip() {
myip="$(curl -s https://nr1.nu/ip/ | sed -n '27p')"
read -p "Is $myip your real IP address (YES/no): " realip
case "$realip" in
  YES)
      sed -i "s/MYIP=/MYIP=$myip/g" $CONF
      printf "\nConfig file has been updated with your IP set to: $myip\n\n"
      ;;
  y)
      sed -i "s/MYIP=/MYIP=$myip/g" $CONF
      printf "\nConfig file has been updated with your IP set to: $myip\n\n"
      ;;
  yes)
      sed -i "s/MYIP=/MYIP=$myip/g" $CONF
      printf "\nConfig file has been updated with your IP set to: $myip\n\n"
      ;;

   *) read -p "Enter your current real IP-Adress: " currentip
      sed -i "s/MYIP=/MYIP=$currentip/g" $CONF
      printf "\nConfig file has been updated with your IP set to: $currentip\n\n"
      ;;
esac
}

settime() {
while true; do
read -p "Set time in seconds for how often you want to download
new uploads from pastebin (Default: 10 Seconds): " o

if [[ $o -lt "10" ]]; then
          printf "\nBy updating emagnet in 10s or less you will get ip-banned\nunless you setup your own script that is able to control\nthe refresh time X times before changing IP..\n\n"
read -p "Are you REALLY sure you want to set $o seconds (YES/no): " rlysure
 case $rlysure in
   YES)
        sed -i "s/TIME=.*/TIME=$o/g" $CONF
        printf "\n\e[1;31mYou has been warned!\n\e[0m"
        printf "\nRefresh time has been set to: $o seconds\n\n"
        printf "%70s\n\n" | tr ' ' '='
        printf "Everything has been set, enable your vpn before you run emagnet: \e[1;37m./emagnet.sh -e \e[1;32m:-)\e[0m\n\n"
        cp .emagnetconf/emagnet.conf  /etc/; break ;;

    *)  printf "\nSet a number between 10 and 3600 is recommended..\n"; continue ;;
 esac
fi
    sed -i "s/TIME=.*/TIME=$o/g" $CONF
    printf "\nRefresh time has been set to: $o seconds..\n\n"
    printf "%70s\n\n" | tr ' ' '='
    printf "Everything has been set, enable your vpn before you run emagnet: \e[1;37m./emagnet.sh -e \e[1;32m:-)\e[0m\n\n"
    cp .emagnetconf/emagnet.conf  /etc/
  exit
done
}

emagnethome() {
read -p "Where do you want to store emagnet's main folder (Default: /root/emagnet) " ehomedir
if [[ $ehomedir = "" ]]; then
  mkdir -p "$(whoami)\/root"
  sed -i '41d' $CONF
  sed -i "41 i EMAGNETHOME=\/$(whoami)\/emagnet" $CONF
  printf "\nConfig file has been updated, using /root/emagnet as emagnets homedir. \n\n"
else
  eehomedir="$(echo $ehomedir | sed 's/\/\///g')"
  sed -i '41d' $CONF
  sed -i "41 i EMAGNETHOME=$ehomedir" $CONF
  printf "\nConfig file has been updated and emagnet's home dir has been set to: $eehomedir\n\n"
fi

}

banner
wip
printf "%70s\n\n" | tr ' ' '='
emagnethome
printf "%70s\n\n" | tr ' ' '='
settime
