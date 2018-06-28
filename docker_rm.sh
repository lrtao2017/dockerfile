#!/bin/bash
#Bulk delete the Exited container

for D in `docker ps -a | grep Exited | awk '{print $1}'`;do
    docker rm $D
    sleep 5
done
