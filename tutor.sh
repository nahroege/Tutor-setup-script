#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt search docker.io
sudo apt search docker-compose
curl -sSL https://get.docker.com | bash
sudo usermod -aG docker $(uname -s)
sudo apt install python3-pip
pip3 install docker-compose
sudo curl -L "https://github.com/overhangio/tutor/releases/download/v12.1.3/tutor-$(uname -s)_$(uname -m)" -o /usr/local/bin/tutor
sudo chmod 0755 /usr/local/bin/tutor
_TUTOR_COMPLETE=source tutor >> ~/.bashrc
echo "Şimdi kuruluma başlama komutu geliyor"
tutor local quickstart
