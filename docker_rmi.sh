#!/bin/bash
#Batch delete the image of none

for I in `docker images | grep none | awk '{print $3}'`;do
    docker rmi $I
    sleep 5
done
