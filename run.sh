#!/bin/sh
./samples.sh
opencv_haartraining -data haarcascade -vec samples.vec -bg negatives.lst -nstages 20 -nsplits 2 -minhitrate 0.999 -maxfalsealarm 0.5 -npos 7000 -nneg 3019 -w 20 -h 20 -nonsym -mem 512 -mode ALL
