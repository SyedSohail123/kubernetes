#!/bin/bash
sudo -i
apt update
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x ./dotnet-install.sh
./dotnet-install.sh --channel 7.0
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools
mkdir -p /var/www/nopCommerce
cd /var/www/nopCommerce
wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.2/nopCommerce_4.60.2_NoSource_linux_x64.zip
apt-get install unzip -y
unzip nopCommerce_4.60.2_NoSource_linux_x64.zip
mkdir bin
mkdir logs
dotnet Nop.Web.dll --urls "http://0.0.0.0:5000"
