#!/bin/sh
LB_FOLDER="load_balancer"

git clone https://github.com/andes-k8s/dcm4che-load-balancer.git /git/$LB_FOLDER
git clone https://github.com/andes-k8s/dcm4che-cert-updater.git /git/cert_updater

cp cert_updater/*.sh $LB_FOLDER/
cp -R cert_updater/template $LB_FOLDER/
cp cert_updater/README.md $LB_FOLDER/README_CERT_UPDATER.md
mkdir $LB_FOLDER/certs

echo "LB instalado en $LB_FOLDER"
echo "Pasos: "
echo "  - Correr ./generate-conf.sh (para generar archivos de configuracion del LB)"
echo "  - Copiar kubeconfig del cluster en carpeta $LB_FOLDER"
echo "  - Copiar los certificados (fullchain.pem y privkey.pem) en $LB_FOLDER/certs"
echo "  - Iniciar el LB docker-compose up -d"
echo " \n\n Para actualizar certificados..."
echo " Copiar nuevos certificados en $LB_FOLDER/certs y correr el script ./update-certs.sh"
