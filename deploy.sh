#!/bin/sh
ssh root@NODEJSDROPLETIP<<EOF
   cd /var/www/html/
   git pull origin main
   npm install --production
   pm2 restart all
   exit
EOF
