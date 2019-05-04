# Herobraine default server build

#### Skeleton and default plugins

We have Multiverse, RandomSpawn, and VoidSpawn. ClearLagg for entity removal.

#### Experiment worlds

The experiment worlds contain their own lobbies in the region files r.0.0.mca and r.0.-1.mca, which must be version controlled. These lobbies are originally generated based on the template in `e_lobby` but contain manually placed signs and command blocks.

If these signs/command blocks have manual edits that need to be committed to version control, run `sync-worlds.sh` to pull down the necessary parts.

TODO there needs to be a similar script for syncing the lobby

#### To Deploy

Copy mc_server.service to `/lib/systemd/system/`.

Run `sudo service mc_server start`

#### What to commit/ignore in the repo

Do not commit changes to server.properties, experiments.yml, TODO ...

#### To access from SSH

./mcrcon -H localhost -P 9999 -p minecraft -t

#### Important links

https://github.com/cmu-rl/mcserver

https://github.com/cmu-rl/HerobrainePlugin

https://teilgedanken.de/Blog/post/setting-up-a-minecraft-server-using-systemd/

https://github.com/ReplayMod
