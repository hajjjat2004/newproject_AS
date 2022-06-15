#!/bin/sh
ssh root@NODEJSDROPLETIP<<EOF
   sudo cd /var/www/html/
   sudo git pull origin main
   sudo npm install --production
   sudo pm2 restart all
   sudo exit
EOF
