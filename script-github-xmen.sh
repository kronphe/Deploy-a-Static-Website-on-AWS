#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/kronphe/xmen-site-webfiles/raw/main/xmen-main.zip
unzip xmen-main.zip
cp -r /var/www/html/xmen-main/* /var/www/html
rm -rf xmen-main.zip xmen-main
systemctl enable httpd
systemctl start httpd
