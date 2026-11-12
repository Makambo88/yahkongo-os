#!/bin/bash
# Script pour définir le fond d'écran par défaut de YAHKONGO OS

echo "Configuration du fond d'écran YAHKONGO..."

# 1. Créer le dossier des fonds d'écran s'il n'existe pas
mkdir -p ~/.config/omarchy/backgrounds

# 2. Copier l'image depuis le dépôt vers le dossier de configuration
# Note : On suppose que l'image a été téléchargée avec le dépôt dans ~/yahkongo-os/
cp ~/yahkongo-os/default/omarchy/yahkongo_wallpaper.jpg ~/.config/omarchy/backgrounds/yahkongo_wallpaper.jpg

# 3. Appliquer le fond d'écran avec Hyprland (swww ou hyprpaper)
# On utilise swww qui est le standard actuel sur Omarchy
if command -v swww &> /dev/null; then
    swww img ~/.config/omarchy/backgrounds/yahkongo_wallpaper.jpg
else
    # Fallback si swww n'est pas installé
    hyprctl hyprpaper wallpaper ",~/.config/omarchy/backgrounds/yahkongo_wallpaper.jpg"
fi

# 4. Sauvegarder le choix pour qu'il persiste au redémarrage
echo "swww img ~/.config/omarchy/backgrounds/yahkongo_wallpaper.jpg" >> ~/.config/hypr/autostart.lua

echo "Fond d'écran YAHKONGO appliqué avec succès !"
