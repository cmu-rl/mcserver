#! /bin/bash
# This script downloads the latest important block data and config of an experiment world on the production server

world=$1

rm -rf $world
mkdir $world
scp -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/* ./$world/

scp -r -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/data ./$world/
scp -r -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/DIM-1 ./$world/
scp -r -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/DIM1 ./$world/

mkdir $world/region
scp -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/region/r.0.0.mca ./$world/region/
scp -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/region/r.0.-1.mca ./$world/region/
scp -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/region/r.-1.-1.mca ./$world/region/
scp -i ~/.ssh/HerobraineEC2.pem ubuntu@mc.herobraine.stream:./mcserver/$world/region/r.-1.0.mca ./$world/region/
