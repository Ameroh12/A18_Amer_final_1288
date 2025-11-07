# 📸 CHECKLIST DES CAPTURES - A18_Amer_final_1288

## ✅ CAPTURES À RÉALISER (5 captures obligatoires)

---

### 📸 CAPTURE a) - Environnement de développement local

**Ce qu'il faut montrer :**
- [ ] VS Code ouvert
- [ ] Dossier `A18_Amer_final_1288` visible dans l'explorateur
- [ ] Fichiers visibles :
  - [ ] `DockerDemo.java`
  - [ ] `Dockerfile`
  - [ ] `.github/workflows/docker-ci.yml`
  - [ ] `README.md`
  - [ ] `test-local.bat`
  - [ ] `GUIDE_COMPLET_CAPTURES.md`

**Instructions :**
1. Appuyez sur `Ctrl+Shift+E` pour ouvrir l'explorateur
2. Développez tous les dossiers pour voir la structure
3. Prenez une capture d'écran complète (`Windows+Shift+S` ou `Impr écran`)

**Nom de fichier suggéré :** `a_environnement_local.png`

---

### 📸 CAPTURE b) - GitHub (Dépôt)

**Ce qu'il faut montrer :**
- [ ] URL du repository : `github.com/VOTRE-USERNAME/A18_Amer_final_1288`
- [ ] Nom du repository bien visible : **A18_Amer_final_1288**
- [ ] Liste des fichiers du projet
- [ ] Au moins 1 commit visible
- [ ] Badge ou indication que c'est votre repository

**Instructions :**
1. Ouvrez votre navigateur
2. Allez sur votre repository GitHub
3. Assurez-vous que le nom `A18_Amer_final_1288` est visible en haut
4. Prenez une capture montrant la page principale du repo

**Nom de fichier suggéré :** `b_github_depot.png`

**⚠️ PRÉREQUIS :**
```bash
# Créez d'abord le repository sur GitHub, puis :
cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
git init
git add .
git commit -m "Initial commit - A18_Amer_final_1288"
git branch -M main
git remote add origin https://github.com/VOTRE-USERNAME/A18_Amer_final_1288.git
git push -u origin main
```

---

### 📸 CAPTURE c) - Pipeline GitHub Actions

**Ce qu'il faut montrer :**
- [ ] Onglet "Actions" du repository GitHub
- [ ] Au moins 1 workflow exécuté avec succès (✅ coche verte)
- [ ] Nom du workflow : "Docker CI/CD Pipeline"
- [ ] Toutes les étapes visibles et réussies :
  - [ ] Checkout code
  - [ ] Afficher le contenu du répertoire /
  - [ ] Set up Docker Buildx
  - [ ] Login to Docker Hub
  - [ ] Build Docker Image
  - [ ] Test Docker Image
  - [ ] Push Docker Image to Docker Hub
  - [ ] Image Details

**Instructions :**
1. Allez sur GitHub → votre repository → onglet "Actions"
2. Cliquez sur un workflow terminé (celui avec la coche verte ✅)
3. Développez toutes les étapes pour les voir
4. Prenez une capture montrant toutes les étapes avec succès

**Nom de fichier suggéré :** `c_pipeline_github_actions.png`

**⚠️ PRÉREQUIS :**
- Secrets GitHub configurés (`DOCKER_USERNAME` et `DOCKER_PASSWORD`)
- Au moins 1 commit poussé après configuration des secrets

---

### 📸 CAPTURE d) - Docker Hub

**Ce qu'il faut montrer :**
- [ ] Page Docker Hub de votre repository
- [ ] Nom du repository : `votre-username/a18-amer-final-1288`
- [ ] Image visible avec tag(s) : `latest` et/ou un SHA de commit
- [ ] Date du dernier push
- [ ] Status : Public ou Private
- [ ] Nombre de pulls (peut être 0)

**Instructions :**
1. Connectez-vous à https://hub.docker.com
2. Allez dans "Repositories"
3. Cliquez sur `a18-amer-final-1288`
4. Prenez une capture montrant :
   - Le nom complet du repository
   - Les tags disponibles
   - La date de dernier push

**Nom de fichier suggéré :** `d_docker_hub.png`

**⚠️ PRÉREQUIS :**
- Compte Docker Hub créé
- Repository `a18-amer-final-1288` créé sur Docker Hub (peut être créé automatiquement par le push)
- Pipeline GitHub Actions exécuté avec succès

---

### 📸 CAPTURE e) - Docker Local

**Ce qu'il faut montrer :**
- [ ] Terminal Windows (CMD ou PowerShell)
- [ ] Commande : `docker images | findstr a18-amer-final-1288`
- [ ] Résultat : Image visible avec nom, tag, ID, taille
- [ ] Commande : `docker run --rm votre-username/a18-amer-final-1288:latest`
- [ ] Résultat : **"Test des images docker"**

**Instructions :**
1. Ouvrez un terminal (CMD)
2. Exécutez :
   ```cmd
   docker images | findstr a18-amer-final-1288
   docker run --rm VOTRE-USERNAME/a18-amer-final-1288:latest
   ```
3. Prenez une capture montrant les deux commandes et leurs sorties

**OU utilisez le script automatique :**
```cmd
cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.bat
```

**Nom de fichier suggéré :** `e_docker_local.png`

**⚠️ PRÉREQUIS :**
- Docker Desktop installé et démarré
- Image construite localement OU téléchargée depuis Docker Hub

---

## 🎯 ORDRE D'EXÉCUTION RECOMMANDÉ

### Phase 1 : Préparation Locale
1. ✅ **CAPTURE a)** - Prenez la capture de VS Code (facile, aucun prérequis)
2. ✅ Testez Docker localement avec `test-local.bat`
3. ✅ **CAPTURE e)** - Prenez la capture de Docker local

### Phase 2 : GitHub
4. ✅ Créez le repository GitHub `A18_Amer_final_1288`
5. ✅ Poussez votre code
6. ✅ **CAPTURE b)** - Prenez la capture du repository GitHub

### Phase 3 : Docker Hub et Pipeline
7. ✅ Créez le repository Docker Hub `a18-amer-final-1288`
8. ✅ Créez un Access Token sur Docker Hub
9. ✅ Configurez les secrets GitHub
10. ✅ Faites un commit pour déclencher le pipeline
11. ✅ Attendez la fin du pipeline (quelques minutes)
12. ✅ **CAPTURE c)** - Prenez la capture du pipeline réussi
13. ✅ **CAPTURE d)** - Prenez la capture de Docker Hub

---

## 📋 CHECKLIST AVANT DE REMETTRE LE TRAVAIL

### Vérifications des Captures
- [ ] Les 5 captures sont prises
- [ ] Les 5 captures sont lisibles (bonne résolution)
- [ ] Les 5 captures montrent bien les éléments demandés
- [ ] Le nom "A18_Amer_final_1288" ou "a18-amer-final-1288" est visible sur chaque capture

### Vérifications Techniques
- [ ] Le repository GitHub s'appelle exactement `A18_Amer_final_1288`
- [ ] Le repository Docker Hub s'appelle exactement `a18-amer-final-1288`
- [ ] Le pipeline GitHub Actions s'est exécuté avec succès
- [ ] L'image est présente sur Docker Hub
- [ ] L'image fonctionne localement et affiche "Test des images docker"

### Vérifications du Code
- [ ] `DockerDemo.java` compile sans erreur
- [ ] `Dockerfile` est correct
- [ ] `.github/workflows/docker-ci.yml` contient l'étape d'affichage du répertoire /
- [ ] Tous les fichiers sont commités et poussés sur GitHub

---

## 🆘 EN CAS DE PROBLÈME

### Le pipeline échoue ?
1. Vérifiez les secrets GitHub (Settings → Secrets)
2. Vérifiez les logs du pipeline pour voir l'étape qui échoue
3. Consultez le fichier `GUIDE_COMPLET_CAPTURES.md` section Dépannage

### Docker ne fonctionne pas localement ?
1. Vérifiez que Docker Desktop est lancé
2. Redémarrez Docker Desktop
3. Essayez `docker --version` pour vérifier l'installation

### L'image ne s'affiche pas sur Docker Hub ?
1. Attendez 2-3 minutes et rafraîchissez
2. Vérifiez que le pipeline s'est terminé avec succès
3. Vérifiez les logs de l'étape "Push Docker Image to Docker Hub"

---

## 📊 MODÈLE DE DOCUMENT À REMETTRE

Créez un document (Word ou PDF) contenant :

```
PROJET : Pipeline CI/CD Docker - Application Java
NOM : A18_Amer_final_1288

=========================================
CAPTURE a) Environnement de développement local
=========================================
[Insérer la capture]

Description : 
- Environnement VS Code avec tous les fichiers du projet
- Structure visible : DockerDemo.java, Dockerfile, .github/workflows/docker-ci.yml

=========================================
CAPTURE b) GitHub - Dépôt
=========================================
[Insérer la capture]

Description :
- Repository GitHub : A18_Amer_final_1288
- URL : https://github.com/VOTRE-USERNAME/A18_Amer_final_1288
- Tous les fichiers présents

=========================================
CAPTURE c) Pipeline GitHub Actions
=========================================
[Insérer la capture]

Description :
- Pipeline "Docker CI/CD Pipeline" exécuté avec succès
- Toutes les étapes terminées (✅)
- Étape visible : "Afficher le contenu du répertoire /"

=========================================
CAPTURE d) Docker Hub
=========================================
[Insérer la capture]

Description :
- Repository Docker Hub : votre-username/a18-amer-final-1288
- Tags disponibles : latest, [SHA du commit]
- Image poussée avec succès par le pipeline

=========================================
CAPTURE e) Docker Local
=========================================
[Insérer la capture]

Description :
- Commandes exécutées :
  • docker images | findstr a18-amer-final-1288
  • docker run --rm votre-username/a18-amer-final-1288:latest
- Résultat : "Test des images docker"

=========================================
CONCLUSION
=========================================
Le pipeline CI/CD a été configuré avec succès. 
L'image Docker est construite, testée et poussée automatiquement 
sur Docker Hub à chaque commit sur la branche main.

Nom du projet : A18_Amer_final_1288
```

---

## ✨ CONSEILS POUR RÉUSSIR

1. **Suivez l'ordre** : Ne sautez pas d'étapes
2. **Testez localement d'abord** : Assurez-vous que Docker fonctionne avant de pousser sur GitHub
3. **Nommage exact** : Respectez exactement les noms demandés
4. **Attendez le pipeline** : Le pipeline peut prendre 3-5 minutes
5. **Captures de qualité** : Prenez des captures nettes et lisibles
6. **Vérifiez tout** : Utilisez les checklists avant de remettre le travail

**Bonne chance ! 🚀**
