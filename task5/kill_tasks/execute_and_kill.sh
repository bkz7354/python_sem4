#!/bin/sh

./pause.sh &
PID=$!
echo "PID is $PID"
sleep 1

jobs
kill $PID
sleep 1
jobs