#!/bin/bash
# Script de compilation de l'ISO YAHKONGO OS
# À exécuter sur une machine Arch Linux (ou Omarchy)

set -e

echo "=== Préparation de la compilation de YAHKONGO-OS.iso ==="

# 1. Vérifier que nous sommes sur Arch Linux
if ! command -v pacman &> /dev/null; then
    echo "Erreur : Ce script doit être exécuté sur Arch Linux."
    exit 1
fi

# 2. Installer archiso (l'outil officiel de création d'ISO Arch)
echo "Installation de archiso..."
sudo pacman -S --noconfirm archiso

# 3. Créer un dossier de travail propre
WORK_DIR="$HOME/yahkongo-iso-build"
rm -rf "$WORK_DIR"
mkdir -p "$WORK_DIR"

# 4. Copier le profil de base d'Archiso
echo "Copie du profil de base..."
cp -r /usr/share/archiso/configs/releng/* "$WORK_DIR/"

# 5. Personnaliser le profil avec YAHKONGO OS
echo "Personnalisation du profil..."
cd "$WORK_DIR"

# Changer le nom de l'ISO
sed -i 's/iso_name="archlinux"/iso_name="YAHKONGO-OS"/' profiledef.sh
sed -i 's/iso_label="ARCH_/iso_label="YAHKONGO_/' profiledef.sh
sed -i 's/iso_publisher="Arch Linux <https:\/\/archlinux.org>"/iso_publisher="YAHKONGO OS <https:\/\/github.com\/Makambo88\/yahkongo-os>"/' profiledef.sh
sed -i 's/iso_application="Arch Linux Live\/Rescue Disk"/iso_application="YAHKONGO OS - Système d'\''Ordre Universel"/' profiledef.sh

# 6. Ajouter les paquets spécifiques à YAHKONGO
echo "Ajout des paquets YAHKONGO..."
cat >> packages.x86_64 << 'EOF'

# --- Paquets YAHKONGO OS ---
# Interface et outils
waybar
rofi
kitty

# Pont logiciel
flatpak
wine-staging
bottles
fuse2

# Agents et IA
python
ollama

# Plugins Hyprland
cpio
cmake
make
meson
ninja
EOF

# 7. Ajouter ton script d'installation dans l'ISO
echo "Intégration des scripts YAHKONGO..."
mkdir -p airootfs/root/yahkongo-scripts
# Note : On suppose que tu as cloné ton dépôt dans le dossier courant
cp -r ~/yahkongo-os/scripts/* airootfs/root/yahkongo-scripts/ 2>/dev/null || true

# 8. Lancer la compilation
echo "=== Compilation de l'ISO en cours (cela peut prendre du temps)... ==="
sudo mkarchiso -v -w "$WORK_DIR/work" -o "$WORK_DIR/out" "$WORK_DIR"

echo "=== Compilation terminée ! ==="
echo "Ton ISO se trouve ici : $WORK_DIR/out/YAHKONGO-OS-*.iso"
