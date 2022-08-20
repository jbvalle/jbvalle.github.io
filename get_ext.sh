#!/bin/bash

#ext_txt_file="ext.txt"
#ext_url="jbvalle.github.io/$ext_txt_file"
#ext_ip=$(lynx -dump $ext_url)
MAKE_PATH=/home/strayker/Coding/jbvalle.github.io

curl ipinfo.io/ip > ext.txt && cd $MAKE_PATH && make

