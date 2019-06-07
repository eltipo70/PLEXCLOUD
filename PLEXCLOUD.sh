#!/bin/bash

echo -n "bienvenido instalando PLEXDRIVE Y PLEX \^-^/ "
echo -n "Intalando...................: "
echo "..&&&&&&&   &&          &&//////  &&          &&  .." 
echo "..&&...///  &&          &&          &&      &&    .." 
echo "..&&...///  &&          &&            \\  //      .."
echo "..&&////    &&          &&//////        &&        .."
echo "..&&        &&          &&            //  \\      .."
echo "..&&        &&          &&          &&      &&    .."
echo "..&&        &&////////  &&//////  &&          &&  .." 
echo -n "dale enter para la instalacion: "
read enter
# lugar de permisos a scrips.
chmod +x plexdrive.sh
chmod +x plex.sh
chmod +x runcloud.sh
chmod +x drivecloud.sh
#actualizando sistema e instalando paquetes.
apt-get update && apt upgrade -y
apt-get install mongodb -y
apt-get install screen
#creando carpetas y moviendo scrips.
mkdir /home/plexdrive
mkdir /home/plexcloud
mv runcloud.sh /home/plexdrive
mv drivecloud.sh /home/plexdrive
#lugar de la instalacion de plex.
echo -n "Instalando PLEX.........DALE ENTER : "
read ENTER
./plex.sh
#lugar de la instalacion de plexdrive.
echo -n "Instalando PLEXDRIVE.......DALE ENTER :"
read ENTER
./plexdrive.sh
cd /home/plexdrive
echo -n "##Al terminar dale ctrl+c DALE ENTER: "
read dale
./plexdrive -o allow_other -v 3 -m localhost /home/plexcloud
#lugar de plexdrive en segundo plano.
echo -n "Ejecutando plexdrive en segundo plano: "
read enter
sh /home/plexdrive/runcloud.sh
screen -ls
#lugar de recomendaciones final:
echo "Configura PLEX con un tunel SSH.."
echo -n "Continua con el README.md  "
read enter
echo -n "Tu IP es :......DALE ENTER......"
read ENTER
echo -n "http://"
curl ifconfig.me
echo -n ":32400   FIN....."
read enter
echo "PLEX INSTALADO.......\^.^/
