#!/bin/sh
./positives.sh
./backgrounds.sh
# perl createtrainsamples.pl positives.dat negatives.dat samples 2000 "opencv_createsamples  -bgcolor 0 -bgthresh 0 -maxxangle 1.1 -maxyangle 1.1 maxzangle 0.5 -maxidev 40 -w 150 -h 400"
# find samples/ -iname '*.vec' > samples.lst
perl bin/createtestsamples.pl positives.lst backgrounds.lst samples 7000 "opencv_createsamples  -bgcolor 0 -bgthresh 0 -maxxangle 1.1 -maxyangle 1.1 maxzangle 0.5 -maxidev 40 -w 150 -h 400"
