#!/bin/bash
# Script pour ajouter un menu démarrer cliquable sur YAHKONGO OS

echo "=== Installation du menu démarrer YAHKONGO ==="

# 1. Installation des paquets nécessaires
echo "Installation de Waybar et Rofi..."
sudo pacman -S --noconfirm waybar rofi

# 2. Création du dossier de configuration Waybar s'il n'existe pas
mkdir -p ~/.config/waybar

# 3. Configuration du module "launcher" dans Waybar
echo "Configuration du bouton Menu..."
cat > ~/.config/waybar/config.jsonc << 'EOF'
{
    "layer": "top",
    "position": "top",
    "height": 30,
    "modules-left": ["custom/launcher", "hyprland/workspaces"],
    "modules-center": ["hyprland/window"],
    "modules-right": ["pulseaudio", "network", "battery", "clock", "tray"],
    
    "custom/launcher": {
        "format": "  Menu",
        "on-click": "rofi -show drun",
        "tooltip": false,
        "escape": true
    },
    
    "hyprland/workspaces": {
        "format": "{name}",
        "on-click": "activate"
    },
    
    "clock": {
        "format": "{:%H:%M}",
        "tooltip-format": "{:%A %d %B %Y}"
    },
    
    "battery": {
        "format": "{capacity}% {icon}",
        "format-icons": ["", "", "", "", ""]
    },
    
    "network": {
        "format-wifi": " {essid}",
        "format-ethernet": "󰈀 Connecté",
        "format-disconnected": "⚠ Déconnecté"
    },
    
    "pulseaudio": {
        "format": "{icon} {volume}%",
        "format-muted": " Muet",
        "format-icons": ["", "", ""]
    },
    
    "tray": {
        "spacing": 10
    }
}
EOF

# 4. Création d'un style simple pour Waybar (optionnel, mais rend le menu plus beau)
cat > ~/.config/waybar/style.css << 'EOF'
* {
    font-family: "JetBrainsMono Nerd Font", sans-serif;
    font-size: 14px;
    border: none;
    border-radius: 0;
}

window#waybar {
    background-color: rgba(30, 30, 46, 0.9);
    color: #cdd6f4;
}

#custom-launcher {
    background-color: #89b4fa;
    color: #1e1e2e;
    padding: 0 15px;
    margin: 5px;
    border-radius: 5px;
    font-weight: bold;
}

#custom-launcher:hover {
    background-color: #b4befe;
}

#workspaces button {
    padding: 0 10px;
    background-color: transparent;
    color: #cdd6f4;
}

#workspaces button.active {
    background-color: #89b4fa;
    color: #1e1e2e;
}

#clock, #battery, #network, #pulseaudio, #tray {
    padding: 0 10px;
    margin: 5px 0;
}
EOF

echo "=== Menu démarrer installé avec succès ==="
echo "Redémarre Waybar pour voir les changements :"
echo "  omarchy restart waybar"
