#!/bin/bash

#Created by jmgimenez
#user and password
sed -i "s/USERNAME/${user}/g" steam/steamcmd/starbound_update.exe
sed -i "s/PASSWORD/${pass}/g" /steam/steamcmd/starbound_update.exe

#update
/steam/steamcmd/steamcmd.sh +runscript starbound_update.txt

#run starbound server
cd /steam/steamcmd/starbound/linux
./starbound_server
