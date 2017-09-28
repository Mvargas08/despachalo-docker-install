#!/bin/bash
docker rm -fv despachalo-rest-api
docker build -t despachalo-rest-api .
docker run -d --privileged=true -v /home/ubuntu/despachalo:/root/despachalo-rest-api/despachalo --name despachalo-rest-api -p 3000:3000 despachalo-rest-api
