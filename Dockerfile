FROM ubuntu:14.04
ENV STEAM /steam/steamcmd
ENV user username
ENV pass password
WORKDIR ${STEAM}

#Actualizar e instalar dependencias
RUN apt-get update && \
	apt-get install -y lib32gcc1 lib32z1 lib32ncurses5  wget supervisor lib32stdc++6
 
#Copiar los scripts 
RUN cd ${STEAM} && \
	wget https://raw.githubusercontent.com/thrash3d/starbound-server/master/server-start && \
	wget https://raw.githubusercontent.com/thrash3d/starbound-server/master/starbound_update.txt && \
	ls

#SteamCMD
RUN wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar -C ${STEAM} -xvz

#instalar starbound server
RUN mkdir ${STEAM}/starbound
RUN ls ${STEAM}
EXPOSE 21025
VOLUME      ["/steam/steamcmd/starbound"]
ENTRYPOINT  ["/steam/steamcmd/server-start"]
