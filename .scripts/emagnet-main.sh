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

emagnet() {
source /etc/emagnet.conf
lynx -dump $PASTEBIN | sed 's/com\//com\/raw\//g' | grep -o http.* | sed -n '7,14p' > /tmp/.pastebin
cd $EMAGNETTEMP
wget -nc -qi /tmp/.pastebin
if [[ -s /tmp/.pastebin ]]; then
total=$(grep -rEiEio '\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b' $EMAGNETTEMP| wc -l)
i=$(grep -rEiEio '\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b' $EMAGNETTEMP| cut -d: -f1 |uniq | cut -d/ -f7) 

if [[ -n $i ]]; then
  echo -e "[$(date +%d/%m/%Y\ -\ %H:%M)]: $(whoami) - Found $total emails from $i" >> $LOGS/emagnet.log
  echo "                    $total Email Adresses Found"
  cp $i $EMAGNETHOME/email-files
  grep -rEiEio '\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b' $EMAGNETTEMP| cut -d: -f2 |uniq >> $LOGS/emails-from-pastebin.txt
  echo URLS from: $(date +%d/%m/%Y\ -\ %H:%M) >> $LOGS/pastebin-urls.txt
  echo ================================= >> $LOGS/pastebin-urls.txt
   cat /tmp/.pastebin >> $LOGS/pastebin-urls.txt
  echo ""  >> $LOGS/pastebin-urls.txt
  echo ""
   rm /tmp/.pastebin
   mv $EMAGNETHOME/.temp/* $EMAGNETHOME/all-files
   sleep 2
   exit 0
else
  echo -e "                  No Email Address Was Found\n"
  sleep 1
  echo "                          Trying Again"
  echo URLS from: $(date +%d/%m/%Y\ -\ %H:%M) >> $LOGS/pastebin-urls.txt
  echo ================================= >> $LOGS/pastebin-urls.txt
   cat /tmp/.pastebin >> $LOGS/pastebin-urls.txt
  echo ""  >> $LOGS/pastebin-urls.txt
   rm /tmp/.pastebin
   mv $EMAGNETHOME/.temp/* $EMAGNETHOME/all-files
fi
else
   printf "                  You Have Probably Been \e[2mBanned\e[0m\n\n              Change IP Or Wait For A Few Minutes\n\n"
read -p "                Type 'YES' if you wanna check " BANCONTROL
if [ $? == 0 ]; then
   if [[ "$BANCONTROL" = "YES" ]]; then
printf "\n\n=====================================================================\n"
printf "\n                        MESSAGE FROM PASTEBIN\n\n"
lynx -dump https://pastebin.com | sed -n '1,10p' | sed 's/   //g'
printf "\n=====================================================================\n\n"
exit
   fi
   exit
fi
fi
}

