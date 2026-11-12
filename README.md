# YAHKONGO OS

> « Vérité. Sécurité. Sagesse. Élévation. »
> « La technologie doit servir la vérité, la justice, la sagesse et l'élévation de l'être humain. »

## 🌍 Qu'est-ce que YAHKONGO OS ?

YAHKONGO OS n'est pas un simple système d'exploitation informatique. C'est un **système d'exploitation civilisationnel, spirituel et cybernétique** inspiré du Bukongo, de la cybersécurité, de l'éthique et du développement humain.

Basé sur **Arch Linux** et le fork **Omarchy**, YAHKONGO OS est conçu pour être :
- **Rapide et léger** : pas de superflu, que l'essentiel.
- **Sécurisé par nature** : Zero Trust, vérification des entrées, protection des données.
- **Accessible à tous** : utilisable au clavier **et** à la souris, sans frustration.
- **Évolutif** : chaque version doit être meilleure que la précédente.

## 🧠 La Philosophie : L'Analogie de l'Être Humain

Dans la vision YAHKONGO, la technologie reflète la structure de l'être humain :

| Élément Humain | Équivalent Informatique |
| :--- | :--- |
| **L'Humain** | Le Matériel (Hardware) |
| **L'Esprit** | Le Processeur (CPU) |
| **L'Âme** | La Mémoire (RAM / Stockage) |
| **Les Principes** | Le Système d'Exploitation (OS) |
| **Les Actions** | Les Programmes (Logiciels) |

Le noyau (Kernel) de ce système repose sur un cycle fondamental :
**Vérité → Justice → Sécurité → Sagesse.**

## 🎯 Les 5 Missions Fondamentales

1. **Protéger** : L'esprit contre la désinformation, la société contre la corruption, les données contre les intrusions, les traditions contre l'oubli, et la vérité contre la manipulation.
2. **Organiser** : Servir de noyau pour les règles de vie, de sécurité, de gouvernance et les relations entre individus, communautés et technologies.
3. **Unifier** : Extraire les principes universels (vérité, justice, responsabilité, protection, sagesse) en faisant dialoguer le Bukongo, le Christianisme, le Bouddhisme, la Kabbale, la Cybersécurité, l'Intelligence Artificielle et les Sciences modernes.
4. **Élever l'être humain** : Aider chaque personne à fonctionner de manière optimale sans être « infectée » par le mensonge, la haine, l'avidité ou l'ignorance.
5. **Établir une cybersécurité universelle** : Traduire les lois spirituelles en règles d'architecture numérique.

## 🏛️ Les 7 Piliers Philosophiques

1. **Vérité avant performance** : « Toute information doit pouvoir être vérifiée. »
2. **Sécurité par nature** : « Tout ce qui existe doit être protégé selon sa valeur. »
3. **Responsabilité individuelle** : « Chaque action laisse une empreinte. »
4. **Sagesse avant intelligence** : « Savoir faire n'est pas savoir pourquoi faire. »
5. **Harmonie entre tradition et innovation** : « Les racines nourrissent l'avenir. »
6. **Communauté et interdépendance** : « Je suis parce que nous sommes. »
7. **Élévation continue** : « Chaque version doit être meilleure que la précédente. »

## 🛠️ L'Architecture Technique

### 1. Les Choix Techniques
- **Moteur (Base)** : Arch Linux (via un fork personnalisé d'Omarchy). Garantit un système rapide, toujours à jour, léger et 100 % open source.
- **Interface Graphique** : Hyprland modifié (esthétique sombre, fluide et épurée d'Omarchy, repensée pour l'usage grand public).
- **Ergonomie Hybride (Clavier + Souris) par défaut** : Ajout de barres de titre cliquables (`hyprbars`) et d'un menu démarrer accessible à la souris (`waybar` + `rofi`). L'utilisateur peut piloter YAHKONGO OS au clavier (comme Omarchy) ou à la souris (comme Windows), selon sa préférence.

### 2. Transparence et Clarté (Zéro frustration)
- **Clavier AZERTY forcé nativement** dès le démarrage via le fichier `vconsole.conf` (KEYMAP=fr).
- **Langue française forcée** via `locale.conf` (LANG=fr_FR.UTF-8).
- **Mots de passe affichables (Terminal)** : Astérisques visibles dans le terminal via `Defaults pwfeedback` dans `/etc/sudoers.d/yahkongo_pwfeedback`.
- **Mots de passe affichables (Écran de connexion)** : Icône « œil » sur l'écran de connexion (SDDM) activée via le script `scripts/enable_password_eye.sh`.

### 3. Le Pont Universel (Linux + Windows)
YAHKONGO OS réunit deux mondes logiciels pour que l'utilisateur puisse installer tous les outils gratuits et open source récents sans barrière technique :

| Format / Origine | Type de logiciel | Intégration native dans YAHKONGO OS |
| :--- | :--- | :--- |
| Arch / AUR | Outils système, navigateurs, dev | pacman + yay |
| Flatpak (Flathub) | Applications Linux modernes tout-en-un | flatpak + boutique graphique à la souris. |
| AppImage | Logiciels Linux portables (GitHub) | fuse2 (lancement par simple double-clic). |
| .exe / .msi | Logiciels Windows gratuits & open source | Wine-staging + Bottles + DXVK (double-clic direct) |

## 🚀 Feuille de Route (De A à Z)

- **Phase A — Création du Dépôt (Fork)** : Cloner le code source d'Omarchy, renommer le système en YAHKONGO OS dans `/etc/os-release` et dans le menu de démarrage, et intégrer tes propres logos et fonds d'écran.
- **Phase B — Configuration Ergonomique** : 
  - Verrouiller le clavier AZERTY par défaut (`vconsole.conf` + `locale.conf`).
  - Activer l'affichage des mots de passe (terminal via `pwfeedback` + SDDM via le script `enable_password_eye.sh`).
  - Modifier la configuration Hyprland/Waybar pour activer le contrôle complet à la souris.
- **Phase C — Intégration du Pont Logiciel** : Automatiser l'installation de flatpak, fuse2, wine-staging, bottles via le script `scripts/install_yahkongo_bridge.sh` et configurer les associations de fichiers (`mimeapps.list` dans `/etc/skel`) pour que les fichiers `.exe` et `.AppImage` s'ouvrent d'un double-clic.
- **Phase D — Banc d'Essai** : Déployer et tester l'ensemble sur une machine virtuelle pour valider la stabilité, l'esthétique et le lancement des applications.
- **Phase E — Génération de l'ISO** : Utiliser `archiso` pour compiler l'ensemble du système en un fichier unique `YAHKONGO-OS.iso`, prêt à être gravé sur clé USB et installé sur n'importe quel ordinateur.

## 📦 Ce que contient ce dépôt

- `docs/LIVRET_FONDATEUR.md` : Le manifeste complet, la philosophie et la vision spirituelle de YAHKONGO OS.
- `scripts/install_yahkongo_bridge.sh` : Installe Flatpak, Wine, Bottles et configure les associations de fichiers.
- `scripts/enable_password_eye.sh` : Active l'icône "œil" sur l'écran de connexion SDDM.
- `scripts/enable_hyprbars.sh` : Active les barres de titre cliquables (hyprbars) pour une utilisation à la souris.
- `scripts/enable_start_menu.sh` : Ajoute un menu démarrer cliquable (Waybar + Rofi).
- `scripts/build_iso.sh` : Script de compilation de l'ISO YAHKONGO OS.
- `etc/sudoers.d/yahkongo_pwfeedback` : Affiche des astérisques lors de la saisie du mot de passe dans le terminal.
- `default/omarchy/vconsole.conf` : Force le clavier AZERTY.
- `default/omarchy/locale.conf` : Force la langue française.
- `default/omarchy/branding/about.txt` : Le logo ASCII de YAHKONGO OS.

## ⚖️ Licence

YAHKONGO OS est basé sur Omarchy, qui est distribué sous licence **MIT**. Les modifications spécifiques à YAHKONGO OS sont également partagées sous cette même licence, dans un esprit d'ouverture, de partage et d'élévation continue.

---

**« Marcher dans la vérité, protéger la vie, partager la sagesse et construire l'avenir. »**
