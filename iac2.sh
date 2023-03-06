#! /bin/bash
echo "atualização do servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "baixar e copiar os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/mian.zip
unzip main.zip
cp -R * /var/www/html/

