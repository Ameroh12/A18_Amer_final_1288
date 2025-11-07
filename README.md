# A18_Amer_final_1288

Application Java minimale qui écrit `Test des images docker` sur la sortie standard. Le dépôt contient également un Dockerfile et un workflow GitHub Actions permettant de construire et de publier l'image sur Docker Hub.

## Structure

```
.
├── DockerDemo.java              # Programme Java simple
├── Dockerfile                   # Image basée sur Temurin 21
├── .github/workflows/
│   └── docker-pipeline.yml      # Workflow GitHub Actions
└── README.md
```

## Pipeline GitHub Actions

Le workflow `docker-pipeline.yml` fait :

1. Checkout du dépôt.
2. Installation de Temurin JDK 21 pour compiler `DockerDemo.java`.
3. Listing du répertoire `/app` (ou `/` si indisponible) avant le build.
4. Connexion à Docker Hub via les secrets `DOCKERHUB_USERNAME` et `DOCKERHUB_TOKEN`.
5. Construction de l'image `ameroh12/a18_amer_final_1288:latest` puis push vers Docker Hub.

Le workflow est déclenché par tout push sur `main` ou par l'action manuelle `workflow_dispatch`.

### Secrets requis

| Secret | Description |
| --- | --- |
| `DOCKERHUB_USERNAME` | Identifiant Docker Hub |
| `DOCKERHUB_TOKEN` | Token Docker Hub avec droits de push |

## Exécution locale

```cmd
javac DockerDemo.java
java DockerDemo

docker build -t ameroh12/a18_amer_final_1288:latest .
docker run --rm ameroh12/a18_amer_final_1288:latest
```

## Licence

Projet partagé pour démonstration académique.
