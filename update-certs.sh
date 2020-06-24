#!/bin/sh
echo "Actualizando certificados en el LB"

LB_FOLDER="lb_files"

cd $LB_FOLDER
docker-compose down
docker-compose up -d

echo "Actualizando certificados en Kubernetes"
sh k8s-update-cert.sh

cd ..