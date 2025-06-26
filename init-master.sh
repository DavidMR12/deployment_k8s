#!/bin/bash

kubeadm init --pod-network-cidr=192.168.0.0/16

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

echo "[INFO] Calico installation..."
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

echo "[INFO] Récupérez cette commande pour vos workers:"
kubeadm token create --print-join-command
