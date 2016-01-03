#!/bin/sh
./positives.sh
./backgrounds.sh
perl bin/createtrainsamples.pl positives.lst negatives.lst samples 7000 "opencv_createsamples  -bgcolor 0 -bgthresh 0 -maxxangle 1.1 -maxyangle 1.1 maxzangle 0.5 -maxidev 40 -w 150 -h 400"
python bin/mergevec.py -v samples -o samples.vec
