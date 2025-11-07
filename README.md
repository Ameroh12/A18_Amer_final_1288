# Pipeline CI/CD Docker - Application Java

Ce projet démontre un pipeline CI/CD complet pour construire et pousser une image Docker d'une application Java vers Docker Hub.

## 📋 Description

Application Java simple qui affiche "Test des images docker" et est conteneurisée avec Docker.

## 🚀 Structure du Projet

```
.
├── DockerDemo.java          # Application Java principale
├── Dockerfile               # Configuration Docker
├── .github/
│   └── workflows/
│       └── docker-ci.yml    # Pipeline CI/CD GitHub Actions
└── README.md
```

## 🔧 Configuration du Pipeline CI/CD

### Prérequis

1. **Compte Docker Hub** : Créez un compte sur [hub.docker.com](https://hub.docker.com)

2. **Secrets GitHub** : Configurez les secrets suivants dans votre repository GitHub :
   - Allez dans `Settings` → `Secrets and variables` → `Actions`
   - Ajoutez les secrets suivants :
     - `DOCKER_USERNAME` : Votre nom d'utilisateur Docker Hub
     - `DOCKER_PASSWORD` : Votre token d'accès Docker Hub (ou mot de passe)

### Fonctionnalités du Pipeline

Le pipeline CI/CD (`docker-ci.yml`) effectue les étapes suivantes :

1. ✅ **Checkout du code** : Récupère le code source
2. 📂 **Affichage du contenu** : Affiche le contenu des répertoires `/` et `/app`
3. 🔧 **Configuration Docker Buildx** : Prépare l'environnement Docker
4. 🔐 **Login Docker Hub** : Authentification sur Docker Hub
5. 🏗️ **Build de l'image** : Construit l'image Docker avec deux tags (latest et SHA du commit)
6. 🧪 **Test de l'image** : Exécute l'image pour vérifier son bon fonctionnement
7. 🚀 **Push vers Docker Hub** : Pousse l'image sur Docker Hub
8. 📊 **Détails de l'image** : Affiche les informations sur l'image créée

### Déclenchement du Pipeline

Le pipeline se déclenche automatiquement lors :
- D'un push sur la branche `main` ou `master`
- D'une pull request vers `main` ou `master`

## 🏃 Utilisation Locale

### Build de l'image Docker

```bash
docker build -t java-docker-demo .
```

### Exécution de l'image

```bash
docker run --rm java-docker-demo
```

### Compilation manuelle (sans Docker)

```bash
javac DockerDemo.java
java DockerDemo
```

## 📦 Récupération de l'Image depuis Docker Hub

Une fois le pipeline exécuté avec succès, vous pouvez télécharger et exécuter l'image :

```bash
docker pull <votre-username>/java-docker-demo:latest
docker run --rm <votre-username>/java-docker-demo:latest
```

## 🔄 Workflow GitHub Actions

Le fichier `.github/workflows/docker-ci.yml` contient toute la configuration du pipeline. Il utilise :
- `actions/checkout@v3` : Pour récupérer le code
- `docker/setup-buildx-action@v2` : Pour configurer Docker Buildx
- `docker/login-action@v2` : Pour l'authentification Docker Hub

## 📝 Notes Importantes

- L'image utilise `openjdk:8-jdk-alpine` comme image de base (légère)
- Le répertoire de travail dans le conteneur est `/app`
- L'application est compilée lors du build de l'image Docker
- Deux tags sont créés : `latest` et un tag basé sur le SHA du commit pour la traçabilité

## 🤝 Contribution

1. Forkez le projet
2. Créez une branche (`git checkout -b feature/amelioration`)
3. Committez vos changements (`git commit -m 'Ajout d une fonctionnalité'`)
4. Poussez vers la branche (`git push origin feature/amelioration`)
5. Ouvrez une Pull Request

## 📄 Licence

Ce projet est fourni à des fins éducatives.
