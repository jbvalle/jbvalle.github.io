#!/bin/bash

MAKE_PATH=/home/strayker/Coding/jbvalle.github.io

curl ipinfo.io/ip > ext.txt && echo "" >> ext.txt && hostname -i >> ext.txt && cd $MAKE_PATH && make update


