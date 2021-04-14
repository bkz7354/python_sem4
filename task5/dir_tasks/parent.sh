#!/bin/sh

cd .. 
mkdir hello_parent
cd hello_parent
echo "hello parent!" > parent.txt
cat parent.txt
ls -l parent.txt