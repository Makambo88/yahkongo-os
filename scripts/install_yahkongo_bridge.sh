#!/bin/bash
# Script d'installation du Pont Logiciel YAHKONGO OS
# À exécuter sur l'ordinateur Omarchy (pas sur GitHub)

echo "=== Installation du Pont Logiciel YAHKONGO OS ==="

# 1. Mise à jour du système
echo "Mise à jour du système..."
sudo pacman -Syu --noconfirm

# 2. Installation des paquets essentiels
echo "Installation de Flatpak, Wine, Bottles et Fuse..."
sudo pacman -S --noconfirm flatpak fuse2 wine-staging bottles

# 3. Ajout du dépôt Flathub
echo "Ajout du dépôt Flathub..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# 4. Configuration des associations de fichiers
echo "Configuration des associations de fichiers..."
mkdir -p ~/.config
cat > ~/.config/mimeapps.list << EOF
[Default Applications]
application/x-ms-dos-executable=wine.desktop
application/x-msi=wine.desktop
application/x-executable=wine.desktop
application/x-msdownload=wine.desktop
EOF

# 5. Création du dossier pour les AppImages
mkdir -p ~/Applications
echo "Les AppImages peuvent être placées dans ~/Applications"

echo "=== Pont Logiciel installé avec succès ==="
echo "Redémarre ta session pour appliquer les changements."
# À la fin du script, ajoute :
echo "=== Activation des modules YAHKONGO ==="
bash ~/YAHKONGO_OS/scripts/enable_hyprbars.sh
bash ~/YAHKONGO_OS/scripts/enable_start_menu.sh
