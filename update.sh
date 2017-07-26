#!/bin/bash 

addr=$(curl https://sourceforge.net/p/mjpg-streamer/code/HEAD/tarball -s | grep window\.location | cut -d "=" -f 2 | sed "s/[';]//g")

echo "Latest download address is: $addr"

#curl $addr | tar -xvf
tmp_file="latest.zip"
curl -Ls -o $tmp_file $addr
unzip $tmp_file -d mjpg-streamer

echo "All done. You can remove $tmp_file any time"
