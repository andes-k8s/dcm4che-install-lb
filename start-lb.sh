#!/bin/sh
cd load_balancer
docker-compose up -d 
cd ..
docker ps