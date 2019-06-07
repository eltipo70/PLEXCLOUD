#!/bin/bash

echo "INSTALANDO PLEXSERVER"
wget https://downloads.plex.tv/plex-media-server-new/1.15.8.1198-eadbcbb45/debian/plexmediaserver_1.15.8.1198-eadbcbb45_amd64.deb
dpkg -i plexmediaserver_1.15.8.1198-eadbcbb45_amd64.deb
