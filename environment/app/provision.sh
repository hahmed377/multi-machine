#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
# source code for node
# curl is a request to get run the script
# after the pipe is the command you want to run on it
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
#  makes it global for multible users
sudo npm install pm2 -g

#  echo "export DB_HOST=192.168.10.101" >> ~/.bashrc
#
# source ~/.bashrc

sudo ln -s /home/ubuntu/environment/nginx.conf /etc/nginx/conf.d/nginx.conf

sudo nginx -s reload
