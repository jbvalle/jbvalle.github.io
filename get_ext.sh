#!/bin/bash

#
MAKE_PATH=/home/strayker/Coding/jbvalle.github.io

curl ipinfo.io/ip > ext.txt && echo "" >> ext.txt && hostname -i >> ext.txt 


echo "" >> log.txt && date >> log.txt && curl ipinfo.io/ip >> log.txt && hostname -i >> log.txt && cd $MAKE_PATH && make update 


