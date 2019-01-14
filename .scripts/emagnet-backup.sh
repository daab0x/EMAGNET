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

cd $EMAGNETHOME; cd ../
printf "Compressing emagnet (this might take a while)\n"
tar cjf emagnet-$( echo $(date +%Y-%m-%d))-$RANDOM.tar.gz emagnet 2> /dev/null
mv emagnet-$( echo $(date +%Y-%m-%d))*.tar.gz $EMAGNETBACKUP
#printf "Wiping $EMAGNETHOME, all done, now it's safe to run emagnet again\n"          
#rm -rf $EMAGNETHOME

