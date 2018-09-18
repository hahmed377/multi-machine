#!/bin/bash
# trying to install mongodb on a new vm
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update -y


# choosing a specific versions
sudo apt-get install mongodb-org=3.2.20 -y

sudo rm /etc/mongod.conf

sudo ln -s /home/ubuntu/environment/mongod.conf /etc/mongod.conf
# starts the mongodb
sudo systemctl start mongod
# enables mongodb the defualt is usually disabled
sudo systemctl enable mongod
# sed i goes into the mongod.config and change the current ip address to a newer one.
