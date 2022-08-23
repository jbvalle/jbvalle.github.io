#!/bin/bash

#ext_ip=$(lynx -dump $ext_url)
MAKE_PATH=/home/strayker/Coding/jbvalle.github.io

curl ipinfo.io/ip > ext.txt && hostname -i >> ext.txt && hd $MAKE_PATH && make update


