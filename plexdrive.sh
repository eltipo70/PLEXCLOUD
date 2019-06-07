#!/bin/bash

echo "INSTALANDO PLEXDRIVE.SH" 
wget -P /home/plexdrive/ https://github.com/dweidenfeld/plexdrive/releases/download/4.0.0/plexdrive-linux-amd64
mv /home/plexdrive/plexdrive-linux-amd64 /home/plexdrive/plexdrive
chown root:root /home/plexdrive/plexdrive
chmod 755 /home/plexdrive/plexdrive
echo -n "Obtenga su client id y client secret de la API de GOOGLE para continuar:"
read enter
