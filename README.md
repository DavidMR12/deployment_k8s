# Projet Cruise - Cluster Kubernetes

Ce projet a pour objectif de déployer un cluster Kubernetes non managé composé d’au moins 3 machines. Il inclut :

- Création d’images Docker (frontend, backend, base de données)
- Déploiement avec des manifests YAML
- Mise en réseau avec Calico
- Registry Docker privée
- Persistance des données avec PV et PVC
- Monitoring (à venir)
- Automatisation (bonus avec Ansible)

## 🗺️ Schéma d’architecture

![alt text](schéma_infra-1.png)

## 📁 Structure du projet

```
cruise/
├── docker/
│   ├── frontend/
│   │   └── Dockerfile
│   ├── backend/
│   │   └── Dockerfile
│   └── db/
│       └── Dockerfile
├── k8s/
│   ├── namespaces.yaml
│   ├── volumes.yaml
│   ├── frontend-deployment.yaml
│   ├── backend-deployment.yaml
│   ├── db-deployment.yaml
│   ├── frontend-service.yaml
│   ├── backend-service.yaml
│   └── db-service.yaml
└── README.md
```

## 🔧 Prochaines étapes

- Ajout des ConfigMaps & Secrets
- Configuration du monitoring (Prometheus, Grafana)
- Automatisation complète avec Ansible

