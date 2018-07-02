#!/bin/bash
apt-get updata
apt install gcc -y
apt install openjdk-8-jre-headless -y
source /home/ubuntu/.bashrc

ssh-keyscan github.com >> /home/ubuntu/.ssh/known_hosts
ssh-keyscan git.code.sf.net >> /home/ubuntu/.ssh/known_hosts

git clone https://github.com/ccodel/mcserver.git
git clone https://github.com/cmu-rl/HerobrainePlugin.git
git clone git://git.code.sf.net/p/mcrcon/code mcrcon-code

chown -R ubuntu:ubuntu /home/ubuntu/mcserver/
chown -R ubuntu:ubuntu /home/ubuntu/mcrcon-code/
chown -R ubuntu:ubuntu /home/ubuntu/HerobrainePlugin/

cd mcrcon-code
gcc mcrcon.c -o mcrcon
cp /home/ubuntu/mcrcon-code/mcrcon /home/ubuntu/

cd /home/ubuntu/HerobrainePlugin/src/main

jar cf HerobrainePlugin.jar java/io resources/config.yml resources/plugin.yml resources/worlds.yml
mv HerobrainePlugin.jar /home/ubuntu/mcserver/plugins/

cd /home/ubuntu
rm -rf HerobrainePlugin

cd /home/ubuntu/mcserver
/usr/bin/java -jar craftbukkit-1.12.2.jar
