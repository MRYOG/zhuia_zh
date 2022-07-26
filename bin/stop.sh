#!/bin/bash

allPid=$(echo `lsof -i:1025|awk '{print $2}'|sed -n '2,$p'|sort -u`)
echo $allPid
kill -9 $allPid