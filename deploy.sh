#!/bin/sh
ssh node@192.168.32.132<<EOF
   sudo cd /var/www/devops/html/
   sudo git pull origin main
   sudo npm install --production
   sudo pm2 restart all
   sudo exit
EOF
