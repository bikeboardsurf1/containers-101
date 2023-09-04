#!/bin/bash
docker ps | grep my-nginx-container | grep 1.0.0
curl -s -o /dev/null -I -w "%{http_code}" http://127.0.0.1:8085 | grep 200
