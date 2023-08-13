#!/bin/sh

npm install -g --unsafe-perm node-red
npm install -g pm2

NODERED=$(which node-red)

pm2 start $NODERED -- -v
pm2 save

mkdir -p /usr/local/etc/rc.d
pm2 startup rcd