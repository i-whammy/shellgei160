#!/bin/bash

n=1
while [ $n -lt 11 ] ; do
  echo "羊が${n}匹"
  n=$((n+1))
  sleep 1
done