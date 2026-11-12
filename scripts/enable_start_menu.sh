#!/bin/bash
# Script pour ajouter un menu démarrer cliquable sur YAHKONGO OS

echo "Installation de Waybar et Rofi..."

# 1. Installer les paquets nécessaires
sudo pacman -S --noconfirm waybar rofi

# 2. Créer le dossier de config Waybar s'il n'existe pas
mkdir -p ~/.config/waybar

# 3. Ajouter le module "launcher" dans la config Waybar
# On ajoute dans un fichier séparé pour ne pas écraser la config existante
cat > ~/.config/waybar/config.jsonc << 'EOF'
{
    "modules-left": ["custom/launcher", "hyprland/workspaces"],
    "custom/launcher": {
        "format": " Menu",
        "on-click": "rofi -show drun",
        "tooltip": false
    }
}
EOF

echo "Menu démarrer activé. Redémarre Waybar avec : omarchy restart waybar"
