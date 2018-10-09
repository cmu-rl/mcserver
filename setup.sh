#!/bin/bash
cd /home/ubuntu/mcrcon-code
gcc mcrcon.c -o mcrcon
cp /home/ubuntu/mcrcon-code/mcrcon /home/ubuntu/

cd /home/ubuntu/mcserver
#/usr/bin/java -Xms13G -Xmx13G -jar craftbukkit-1.12.2.jar
/usr/bin/java -Xms13G -Xmx13G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AggressiveOpts -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar paperclip.jar
