#!/bin/bash
cd /home/ubuntu/mcrcon-code
gcc mcrcon.c -o mcrcon
cp /home/ubuntu/mcrcon-code/mcrcon /home/ubuntu/

cd /home/ubuntu/mcserver
#/usr/bin/java -Xms13G -Xmx13G -jar craftbukkit-1.12.2.jar

# Weirdly enough, this should compute the free GB memory:
mem=$(free -g | awk '{print $4}' | awk '{print $1}' | sed -n '2 p')
mem=$((mem-1))
## Safer approach: Hard-coded to 13 for c5d.2xlarge
# mem=13
/usr/bin/java -Xms${mem}G -Xmx${mem}G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AggressiveOpts -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar paperclip.jar
