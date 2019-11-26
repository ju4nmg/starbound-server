#!/bin/bash

#Created by jmgimenez
#user and password
sed -i "s/USERNAME/${user}/g" ${STEAM}/starbound_update.exe
sed -i "s/PASSWORD/${pass}/g" ${STEAM}/starbound_update.exe

#update
${STEAM}/steamcmd.sh +runscript starbound_update.txt

#run starbound server
cd ${STEAM}/starbound/linux
./starbound_server
