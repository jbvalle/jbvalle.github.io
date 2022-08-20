#!/bin/bash

#On requesting target
#ext_txt_file="ext.txt"
#ext_url="jbvalle.github.io/$ext_txt_file"
#ext_ip=$(lynx -dump $ext_url)

curl ipinfo.io/ip > ext.txt && make update

