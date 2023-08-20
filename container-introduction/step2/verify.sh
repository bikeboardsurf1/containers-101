#!/bin/bash

stat /root/containers101/Dockerfile
stat /root/containers101/index.html
docker images | grep my-nginx-image | grep 1.0.0
