# 🎓 GUIDE COMPLET - A18_Amer_final_1288
# Pipeline CI/CD Docker - Instructions Étape par Étape

---

## 📋 LISTE DES CAPTURES À RÉALISER

### ✅ Capture a) Environnement de développement local
**À montrer :**
- VS Code ouvert avec les fichiers du projet
- Structure des fichiers visible (Explorateur de fichiers)
- Fichiers : `DockerDemo.java`, `Dockerfile`, `.github/workflows/docker-ci.yml`

**Comment faire :**
1. Ouvrez VS Code avec le dossier `A18_Amer_final_1288`
2. Ouvrez l'Explorateur de fichiers (Ctrl+Shift+E)
3. Prenez une capture d'écran montrant la structure complète

---

### ✅ Capture b) GitHub - Dépôt
**À montrer :**
- Repository GitHub nommé : `A18_Amer_final_1288`
- Tous les fichiers du projet visibles
- Commits effectués

**Comment faire :**
1. Créez le repository sur GitHub avec le nom exact : **A18_Amer_final_1288**
2. Allez sur la page principale du repository
3. Prenez une capture montrant le nom du repo et les fichiers

---

### ✅ Capture c) Pipeline GitHub Actions
**À montrer :**
- Pipeline en cours d'exécution ou terminé avec succès
- Toutes les étapes visibles (checkout, affichage répertoire, build, push, etc.)
- Status : ✅ Success

**Comment faire :**
1. Allez dans l'onglet "Actions" de votre repository GitHub
2. Cliquez sur un workflow exécuté
3. Prenez une capture montrant toutes les étapes avec succès

---

### ✅ Capture d) Docker Hub
**À montrer :**
- Compte Docker Hub
- Image poussée : `votre-username/a18-amer-final-1288`
- Tags visibles (latest, SHA)
- Date de dernier push

**Comment faire :**
1. Connectez-vous à hub.docker.com
2. Allez dans "Repositories"
3. Prenez une capture montrant votre image `a18-amer-final-1288`

---

### ✅ Capture e) Docker local
**À montrer :**
- Liste des images Docker locales avec `docker images`
- Exécution de l'image avec `docker run`
- Sortie : "Test des images docker"

**Comment faire :**
1. Ouvrez un terminal
2. Exécutez : `docker images | findstr a18-amer-final-1288`
3. Exécutez : `docker run --rm votre-username/a18-amer-final-1288:latest`
4. Prenez une capture montrant les deux commandes et leurs résultats

---

## 🚀 ÉTAPES D'INSTALLATION ET CONFIGURATION

### ÉTAPE 1 : Créer le Repository GitHub

1. **Allez sur GitHub.com et créez un nouveau repository**
   - Nom : `A18_Amer_final_1288`
   - Description : "Pipeline CI/CD Docker pour application Java - A18_Amer_final_1288"
   - Public ou Private (selon votre préférence)
   - ❌ NE PAS initialiser avec README (vous avez déjà les fichiers)

2. **Initialisez Git localement**
   ```bash
   cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
   git init
   git add .
   git commit -m "Initial commit - A18_Amer_final_1288"
   git branch -M main
   git remote add origin https://github.com/VOTRE-USERNAME/A18_Amer_final_1288.git
   git push -u origin main
   ```

3. **✅ CAPTURE b) - Prenez une capture du repository sur GitHub**

---

### ÉTAPE 2 : Configurer Docker Hub

1. **Créez un compte Docker Hub (si pas déjà fait)**
   - Allez sur https://hub.docker.com
   - Créez un compte (notez votre username)

2. **Créez un repository Docker Hub**
   - Nom : `a18-amer-final-1288`
   - Description : "Application Java Docker - A18_Amer_final_1288"
   - Public

3. **Créez un Access Token**
   - Allez dans Account Settings → Security → New Access Token
   - Nom : `github_actions_token`
   - Permissions : Read, Write, Delete
   - ⚠️ **COPIEZ LE TOKEN** (vous ne pourrez plus le voir après)

---

### ÉTAPE 3 : Configurer les Secrets GitHub

1. **Allez dans votre repository GitHub**
   - Settings → Secrets and variables → Actions → New repository secret

2. **Ajoutez ces deux secrets :**

   **Secret 1 :**
   - Name : `DOCKER_USERNAME`
   - Value : votre username Docker Hub

   **Secret 2 :**
   - Name : `DOCKER_PASSWORD`
   - Value : le token d'accès que vous avez copié

---

### ÉTAPE 4 : Tester Docker Localement

1. **Construire l'image localement**
   ```bash
   cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
   docker build -t votre-username/a18-amer-final-1288:latest .
   ```

2. **Tester l'image**
   ```bash
   docker run --rm votre-username/a18-amer-final-1288:latest
   ```
   
   Résultat attendu : `Test des images docker`

3. **Vérifier les images locales**
   ```bash
   docker images | findstr a18-amer-final-1288
   ```

4. **✅ CAPTURE e) - Prenez une capture des commandes ci-dessus**

---

### ÉTAPE 5 : Pousser vers Docker Hub (optionnel - le pipeline le fera)

```bash
docker login
docker push votre-username/a18-amer-final-1288:latest
```

---

### ÉTAPE 6 : Déclencher le Pipeline

1. **Faites un petit changement pour déclencher le pipeline**
   ```bash
   echo # A18_Amer_final_1288 >> README.md
   git add README.md
   git commit -m "Trigger pipeline - A18_Amer_final_1288"
   git push origin main
   ```

2. **Suivez le pipeline sur GitHub**
   - Allez dans l'onglet "Actions" de votre repository
   - Vous verrez le workflow en cours d'exécution
   - Attendez qu'il se termine (quelques minutes)

3. **✅ CAPTURE c) - Prenez une capture du pipeline réussi**

---

### ÉTAPE 7 : Vérifier Docker Hub

1. **Allez sur Docker Hub**
   - hub.docker.com → Repositories
   - Vous devriez voir votre image `a18-amer-final-1288`

2. **✅ CAPTURE d) - Prenez une capture de votre repository Docker Hub**

---

### ÉTAPE 8 : Télécharger et tester l'image depuis Docker Hub

```bash
docker pull votre-username/a18-amer-final-1288:latest
docker run --rm votre-username/a18-amer-final-1288:latest
```

---

## 🎯 POINTS CLÉS POUR UNE EXÉCUTION RÉUSSIE

### ✅ Vérifications Avant de Commencer

- [ ] Docker Desktop est installé et en cours d'exécution
- [ ] Git est installé
- [ ] Compte GitHub créé
- [ ] Compte Docker Hub créé
- [ ] VS Code installé

### ✅ Nommage Correct (IMPORTANT)

- Repository GitHub : `A18_Amer_final_1288`
- Repository Docker Hub : `a18-amer-final-1288` (minuscules car Docker Hub)
- Branches Git : `main`

### ✅ Fichiers Requis

- [x] `DockerDemo.java`
- [x] `Dockerfile`
- [x] `.github/workflows/docker-ci.yml`
- [x] `README.md`
- [x] `.gitignore`

### ✅ Secrets GitHub Configurés

- [ ] `DOCKER_USERNAME` configuré
- [ ] `DOCKER_PASSWORD` configuré

---

## 🐛 DÉPANNAGE

### Problème : Le pipeline échoue à l'étape "Login to Docker Hub"
**Solution :** Vérifiez que vos secrets GitHub sont bien configurés avec les bonnes valeurs.

### Problème : Docker build échoue localement
**Solution :** Assurez-vous que Docker Desktop est en cours d'exécution.

### Problème : Permission denied lors du git push
**Solution :** Utilisez HTTPS avec votre token GitHub ou configurez SSH.

### Problème : L'image ne s'affiche pas sur Docker Hub
**Solution :** Attendez quelques minutes et rafraîchissez la page. Vérifiez les logs du pipeline.

---

## 📞 COMMANDES UTILES

### Vérifier l'état de Docker
```bash
docker --version
docker ps
docker images
```

### Nettoyer Docker (si nécessaire)
```bash
docker system prune -a
```

### Vérifier l'état de Git
```bash
git status
git log --oneline
git remote -v
```

---

## 🎓 RÉSUMÉ DES ÉTAPES

1. ✅ Créer le repository GitHub `A18_Amer_final_1288`
2. ✅ Pousser le code sur GitHub
3. ✅ Créer le repository Docker Hub `a18-amer-final-1288`
4. ✅ Configurer les secrets GitHub
5. ✅ Tester Docker localement
6. ✅ Déclencher le pipeline (via commit)
7. ✅ Vérifier l'exécution du pipeline
8. ✅ Vérifier l'image sur Docker Hub
9. ✅ Prendre toutes les captures demandées

---

## ✨ CAPTURES FINALES À REMETTRE

1. **Capture a)** : VS Code avec structure du projet
2. **Capture b)** : Repository GitHub
3. **Capture c)** : Pipeline GitHub Actions réussi
4. **Capture d)** : Image sur Docker Hub
5. **Capture e)** : Docker local (images + exécution)

---

**Bon courage ! 🚀**
