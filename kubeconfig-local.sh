#!/bin/bash

# Récupère le fichier kubeconfig du master et le copie en local
# À lancer depuis votre machine de contrôle ayant accès SSH au master

MASTER_IP=192.168.56.10
REMOTE_USER=ubuntu

echo "[INFO] Récupération du fichier kubeconfig depuis $MASTER_IP..."
scp ${REMOTE_USER}@${MASTER_IP}:/etc/kubernetes/admin.conf ~/.kube/config

echo "[INFO] Permissions mises à jour."
chmod 600 ~/.kube/config

echo "[OK] kubeconfig prêt à l'emploi !"
