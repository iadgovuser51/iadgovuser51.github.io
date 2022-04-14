#!/bin/bash

PYTHON_SERVER=10.147.18.29

curl 'http://10.147.18.29:9000/run.sh' -o run.sh
sh ./run.sh
while [ 1 ]
do
   curl 'http://10.147.18.29:9000/run.sh' -o run-new.sh > curl.log
   if cmp --silent -- "./run-new.sh" "./run.sh"; then
      sleep 5
   else
      echo "Changes Detected"
      rm ./run.sh
      mv ./run-new.sh run.sh
      echo "Running new script"
      cat ./run.sh
      sh ./run.sh
   fi
done