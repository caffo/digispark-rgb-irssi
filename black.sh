#!/bin/sh
#
# make sure irssi's autolog is enabled
#
echo "starting black.sh"
tail -fn0 ~/irclogs/Bitlbee/*.log | \
while read line ; do
        echo "$line" | grep "caffo" >> /dev/null
        if [ $? = 0 ]
        then
         digit black
        fi
done