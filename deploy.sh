#!/bin/sh
ssh root@NODEJSDROPLETIP<<EOF
   cd /var/www/html/
   git pull origin master
   npm install --production
   pm2 restart all
   exit
EOF
