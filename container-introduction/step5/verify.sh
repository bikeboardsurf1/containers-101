#!/bin/bash
docker ps | grep my-web-server
curl -s -o /dev/null -I -w "%{http_code}" http://127.0.0.1:81 | grep 200