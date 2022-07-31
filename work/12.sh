#!/bin/bash

if [ "$1" = "" ] ; then
  read argument
else
  argument="$1" 
fi

echo $((argument*2))