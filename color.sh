#!/bin/sh
#
# depends on fnotify.pl - https://gist.github.com/caffo/5492346
#
echo "starting color.sh"
tail -fn0 ~/.irssi/fnotify | \
while read line ; do
        echo "$line" >> /dev/null
        if [ $? = 0 ]
        then
         ./digit purple
        fi
done