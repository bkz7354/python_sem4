#!/bin/bash

mkdir task2
cp linux.txt task2/.
cd task2
cat linux.txt
less linux.txt -s
sed -i 's/\[.*\]//g' linux.txt
cd ..
tar -cf task2.tar.gz task2
