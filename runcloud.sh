#!/bin/bash

echo -n "EJECUTANDO PLEXDRIVE EN SEGUNDO PLANO.....: "
echo -n "DALE ENTER..: "
read ENTER
nohup sh /home/plexdrive/drivecloud.sh > foo.out 2> foo.err < /dev/null &
