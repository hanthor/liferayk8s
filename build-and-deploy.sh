#!/bin/bash

echo -e "##########################"
echo "Preparing k8s namespace"
./scripts/init-namespace.sh

echo -e "\n##########################"
echo "Setting Database MySQL"
./scripts/init-mysql.sh

echo -e "\n##########################"
echo "Setting Elasticsearch"
./scripts/init-es.sh

echo -e "\n##########################"
echo "Setting Liferay"
./scripts/init-liferay.sh

echo -e "\n##########################"
echo "Setting Nginx Ingress"
./scripts/init-ingress.sh

echo -e "\n##########################"
echo -e "\nWait while Liferay database scheme is created..."
./scripts/check-liferay-status.sh
