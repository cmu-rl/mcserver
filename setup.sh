#!/bin/bash
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
