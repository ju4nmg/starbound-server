#!/bin/bash

#Created by jmgimenez
#update
/home/steam/steamcmd.sh +runscript starbound_update.txt

#run starbound server
cd ${STEAM}/starbound/linux
./starbound_server
