cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.batcd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.bat# 🚀 DÉMARRAGE RAPIDE - A18_Amer_final_1288

## ⚡ COMMANDES ESSENTIELLES

### 1️⃣ Test Local (À faire en PREMIER)

```cmd
cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"
test-local.bat
```

**📸 Prenez la CAPTURE e) de cette fenêtre !**

---

### 2️⃣ Initialiser Git et Pousser sur GitHub

**Sur GitHub.com :**
1. Créez un nouveau repository
2. Nom : `A18_Amer_final_1288`
3. Ne cochez RIEN (pas de README, pas de .gitignore)

**Dans le terminal :**
```cmd
cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"

git init
git add .
git commit -m "Initial commit - A18_Amer_final_1288"
git branch -M main
git remote add origin https://github.com/VOTRE-USERNAME/A18_Amer_final_1288.git
git push -u origin main
```

**📸 Allez sur GitHub et prenez la CAPTURE b) du repository !**

---

### 3️⃣ Configurer Docker Hub

**Sur hub.docker.com :**
1. Créez un compte (si pas déjà fait)
2. Créez un repository :
   - Nom : `a18-amer-final-1288`
   - Public
3. Créez un Access Token :
   - Account Settings → Security → New Access Token
   - Nom : `github_actions`
   - Permissions : Read, Write, Delete
   - **COPIEZ LE TOKEN !**

---

### 4️⃣ Configurer les Secrets GitHub

**Sur GitHub.com :**
1. Allez dans votre repository
2. Settings → Secrets and variables → Actions
3. New repository secret

**Secret 1 :**
- Name : `DOCKER_USERNAME`
- Value : `votre-username-dockerhub`

**Secret 2 :**
- Name : `DOCKER_PASSWORD`
- Value : `le-token-que-vous-avez-copié`

---

### 5️⃣ Déclencher le Pipeline

```cmd
cd "c:\Users\ouldh_bc22i0x\OneDrive\Documents\A18_Amer_final_1288"

echo # Trigger pipeline >> README.md
git add README.md
git commit -m "Trigger pipeline - A18_Amer_final_1288"
git push origin main
```

**Attendez 3-5 minutes...**

**📸 Allez sur GitHub → Actions et prenez la CAPTURE c) du pipeline !**

**📸 Allez sur Docker Hub et prenez la CAPTURE d) de l'image !**

---

## 📸 RÉCAPITULATIF DES 5 CAPTURES

| # | Capture | Où la prendre | Fichier |
|---|---------|---------------|---------|
| a | Environnement local | VS Code | `a_environnement_local.png` |
| b | GitHub Dépôt | github.com/vous/A18_Amer_final_1288 | `b_github_depot.png` |
| c | Pipeline | GitHub → Actions | `c_pipeline_github_actions.png` |
| d | Docker Hub | hub.docker.com/r/vous/a18-amer-final-1288 | `d_docker_hub.png` |
| e | Docker Local | Terminal après test-local.bat | `e_docker_local.png` |

---

## ✅ CHECKLIST RAPIDE

- [ ] Docker Desktop est lancé
- [ ] `test-local.bat` fonctionne → **CAPTURE e)**
- [ ] **CAPTURE a)** prise dans VS Code
- [ ] Repository GitHub créé : `A18_Amer_final_1288`
- [ ] Code poussé sur GitHub → **CAPTURE b)**
- [ ] Repository Docker Hub créé : `a18-amer-final-1288`
- [ ] Access Token Docker Hub créé et copié
- [ ] Secrets GitHub configurés
- [ ] Pipeline déclenché et réussi → **CAPTURE c)**
- [ ] Image visible sur Docker Hub → **CAPTURE d)**

---

## 🆘 AIDE RAPIDE

**Docker ne démarre pas ?**
→ Lancez Docker Desktop et attendez qu'il soit prêt

**Git demande un mot de passe ?**
→ Utilisez un Personal Access Token GitHub

**Le pipeline échoue ?**
→ Vérifiez les secrets dans Settings → Secrets and variables → Actions

**L'image n'est pas sur Docker Hub ?**
→ Attendez 2-3 minutes et rafraîchissez la page

---

## 📚 DOCUMENTS COMPLETS

- `GUIDE_COMPLET_CAPTURES.md` : Guide détaillé complet
- `CHECKLIST_CAPTURES.md` : Détails de chaque capture
- `README.md` : Documentation du projet

---

**🎯 Suivez ces étapes dans l'ordre et vous aurez toutes vos captures ! 🚀**
