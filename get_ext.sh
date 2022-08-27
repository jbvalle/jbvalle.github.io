#!/bin/bash

#
MAKE_PATH=/home/strayker/Coding/jbvalle.github.io

curl ipinfo.io/ip > ext.txt && echo "" >> ext.txt && hostname -i >> ext.txt 


cd $MAKE_PATH && echo "" >> log.txt && date >> log.txt && curl ipinfo.io/ip >> log.txt && echo "" >> log.txt &&hostname -i >> log.txt && make update 


