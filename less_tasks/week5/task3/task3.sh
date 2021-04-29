#!/bin/bash


dir=$(pwd)
(crontab -l ; echo "* * * * * $dir/time.sh \"$dir\"") | crontab -
(crontab -l ; echo "* * * * * sleep 30; $dir/time.sh \"$dir\"") | crontab -
