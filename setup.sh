#!/bin/bash
cd /home/ubuntu/mcrcon-code
gcc mcrcon.c -o mcrcon
cp /home/ubuntu/mcrcon-code/mcrcon /home/ubuntu/

cd /home/ubuntu/mcserver
/usr/bin/java -jar craftbukkit-1.12.2.jar
