# Herobraine default server build

#### Skeleton and default plugins

We have Multiverse, RandomSpawn, and VoidSpawn. ClearLagg for entity removal.

#### To Deploy

Copy mc_server.service to `/lib/systemd/system/`.

Run `sudo service mc_server start`

#### To access from SSH

./mcrcon -H localhost -P 9999 -p minecraft -t

#### Important links

https://github.com/cmu-rl/mcserver

https://github.com/cmu-rl/HerobrainePlugin

https://teilgedanken.de/Blog/post/setting-up-a-minecraft-server-using-systemd/

https://github.com/ReplayMod
