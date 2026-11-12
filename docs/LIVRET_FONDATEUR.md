# LIVRET FONDATEUR : YAHKONGO OS

> « Vérité. Sécurité. Sagesse. Élévation. »
> « Marcher dans la vérité, protéger la vie, partager la sagesse et construire l'avenir sous la gouvernance de YAHWUH. »

## PARTIE I : LE MANIFESTE CIVILISATIONNEL & SPIRITUEL

### 1. L'Essence de YAHKONGO OS
**YAH** (de l'hébreu) : Dieu.
**KONGO** : Le nom du Dieu Vivant.
**La Mission** : YAHKONGO OS n'est pas un simple système d'exploitation informatique. C'est un système d'exploitation civilisationnel, spirituel et cybernétique inspiré du Bukongo, de la cybersécurité, de l'éthique et du développement humain.
**La Phrase Fondatrice** : « La technologie doit servir la vérité, la justice, la sagesse et l'élévation de l'être humain. »

### 2. L'Analogie de l'Être Humain et de la Machine
Dans la vision YAHKONGO, la technologie reflète la structure de l'être humain :
- L'Humain = Le Matériel (Hardware)
- L'Esprit = Le Processeur (CPU)
- L'Âme = La Mémoire (RAM / Stockage)
- Les Principes = Le Système d'Exploitation (OS)
- Les Actions = Les Programmes (Logiciels)

Le noyau (Kernel) de ce système repose sur un cycle fondamental : **Vérité → Justice → Sécurité → Sagesse.**

### 3. Les 5 Missions Fondamentales
- **Protéger** : L'esprit contre la désinformation, la société contre la corruption, les données contre les intrusions, les traditions contre l'oubli, et la vérité contre la manipulation.
- **Organiser** : Servir de noyau pour les règles de vie, de sécurité, de gouvernance et les relations entre individus, communautés et technologies.
- **Unifier** : Extraire les principes universels (vérité, justice, responsabilité, protection, sagesse) en faisant dialoguer le Bukongo, le Christianisme, le Bouddhisme, la Kabbale, la Cybersécurité, l'Intelligence Artificielle et les Sciences modernes.
- **Élever l'être humain** : Aider chaque personne à fonctionner de manière optimale sans être « infectée » par le mensonge, la haine, l'avidité ou l'ignorance.
- **Établir une cybersécurité universelle** : Traduire les lois spirituelles en règles d'architecture numérique.

| Loi Spirituelle | Équivalent Cybernétique YAHKONGO |
| :--- | :--- |
| Ne pas mentir | Intégrité des données |
| Ne pas voler | Contrôle d'accès |
| Respect de la parole donnée | Authentification |
| Vigilance spirituelle | Surveillance continue |
| Justice | Audit et traçabilité |
| Sagesse | Gouvernance des risques |
| Pureté | Hygiène numérique |
| Communion | Réseau de confiance |

### 4. Les 7 Piliers Philosophiques
1. **Vérité avant performance** : « Toute information doit pouvoir être vérifiée. » (L'intégrité prime sur le profit ou la vitesse).
2. **Sécurité par nature** : « Tout ce qui existe doit être protégé selon sa valeur. » (Protection native des données, de l'identité et des savoirs).
3. **Responsabilité individuelle** : « Chaque action laisse une empreinte. » (La liberté implique la responsabilité et la traçabilité).
4. **Sagesse avant intelligence** : « Savoir faire n'est pas savoir pourquoi faire. » (L'IA assiste, l'humain décide, l'éthique guide).
5. **Harmonie entre tradition et innovation** : « Les racines nourrissent l'avenir. » (Alliance des savoirs ancestraux et de la science moderne).
6. **Communauté et interdépendance** : « Je suis parce que nous sommes. » (Chaque nœud influence l'ensemble du réseau).
7. **Élévation continue** : « Chaque version doit être meilleure que la précédente. » (Apprentissage permanent et développement de la conscience).

---

## PARTIE II : L'ARCHITECTURE TECHNIQUE & ERGONOMIE

Pour incarner cette philosophie dans un ordinateur réel, YAHKONGO OS est conçu comme un système moderne, transparent, accessible à tous et universel.

### 1. Les Choix Techniques
- **Moteur (Base)** : Arch Linux (via un fork personnalisé d'Omarchy). Garantit un système rapide, toujours à jour, léger et 100 % open source.
- **Interface Graphique** : Hyprland modifié (esthétique sombre, fluide et épurée d'Omarchy, repensée pour l'usage grand public).
- **Ergonomie Hybride (Clavier + Souris)** : Ajout de barres de fenêtres classiques (fermer, réduire, agrandir) et d'un menu démarrer cliquable pour que l'utilisateur puisse piloter tout le système à la souris ou au clavier selon son choix.

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

---

## PARTIE III : FEUILLE DE ROUTE DE FABRICATION (DE A À Z)

- **Phase A — Création du Dépôt (Fork)** : Cloner le code source d'Omarchy, renommer le système en YAHKONGO OS dans `/etc/os-release` et dans le menu de démarrage, et intégrer tes propres logos et fonds d'écran.
- **Phase B — Configuration Ergonomique** : 
  - Verrouiller le clavier AZERTY par défaut (`vconsole.conf` + `locale.conf`).
  - Activer l'affichage des mots de passe (terminal via `pwfeedback` + SDDM via le script `enable_password_eye.sh`).
  - Modifier la configuration Hyprland/Waybar pour activer le contrôle complet à la souris.
- **Phase C — Intégration du Pont Logiciel** : Automatiser l'installation de flatpak, fuse2, wine-staging, bottles via le script `scripts/install_yahkongo_bridge.sh` et configurer les associations de fichiers (`mimeapps.list` dans `/etc/skel`) pour que les fichiers `.exe` et `.AppImage` s'ouvrent d'un double-clic.
- **Phase D — Banc d'Essai** : Déployer et tester l'ensemble sur une machine virtuelle pour valider la stabilité, l'esthétique et le lancement des applications.
- **Phase E — Génération de l'ISO** : Utiliser `archiso` pour compiler l'ensemble du système en un fichier unique `YAHKONGO-OS.iso`, prêt à être gravé sur clé USB et installé sur n'importe quel ordinateur.
