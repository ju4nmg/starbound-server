#!/bin/bash

#Created by jmgimenez
#user and password
sed -i "s/USERNAME/${user}/g" /home/steam/steamcmd/starbound_update.exe
sed -i "s/PASSWORD/${pass}/g" /home/steam/steamcmd/starbound_update.exe

#update
/home/steam/steamcmd/steamcmd.sh +runscript starbound_update.txt

#run starbound server
cd /home/steam/steamcmd/starbound/linux
./starbound_server
