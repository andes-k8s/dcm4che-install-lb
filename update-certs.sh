#!/bin/sh
echo "Actualizando certificados en el LB"

LB_FOLDER="load_balancer"

cd $LB_FOLDER
docker-compose down
docker-compose up -d

echo "Actualizando certificados en Kubernetes"
sh k8s-update.cert.sh

cd ..