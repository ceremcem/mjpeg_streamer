#!/bin/bash 

addr=$(curl https://sourceforge.net/p/mjpg-streamer/code/HEAD/tarball -s | grep window\.location | cut -d "=" -f 2 | sed "s/[';]//g")

echo "Latest download address is: $addr"

#curl $addr | tar -xvf
tmp_file="latest.zip"
src_path="mjpg-streamer"


curl -Ls -o $tmp_file $addr
rm -r $src_path 2> /dev/null
unzip $tmp_file -d "latest"
mv ./latest/mjpg-streamer-code-* $src_path
rm -r ./latest

echo 
echo "-------------------------------------------"
echo
echo "All done. You can remove $tmp_file any time"
echo 
echo "-------------------------------------------"
echo
