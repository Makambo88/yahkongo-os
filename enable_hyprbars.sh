#!/bin/bash
# Script pour activer les barres de titre (hyprbars) sur YAHKONGO OS

echo "Installation du plugin hyprbars..."

# 1. Installer les dépendances pour les plugins Hyprland
sudo pacman -S --noconfirm cpio cmake make meson ninja

# 2. Installer le plugin via hyprpm
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm enable hyprbars

# 3. Ajouter la configuration dans un fichier dédié (sans toucher à looknfeel.lua)
cat >> ~/.config/hypr/hyprland.lua << 'EOF'

-- === Configuration YAHKONGO : Barres de titre ===
hl.config({
    plugin = {
        hyprbars = {
            bar_height = 20,
            bar_text_size = 10,
        }
    }
})

hl.plugin.hyprbars.add_button({
    bg_color = "rgb(ff4040)",
    fg_color = "rgb(ffffff)",
    size = 10,
    icon = "X",
    action = "hyprctl dispatch 'hl.dsp.window.close()'",
})

hl.plugin.hyprbars.add_button({
    bg_color = "rgb(eeee11)",
    fg_color = "rgb(000000)",
    size = 10,
    icon = "_",
    action = [[hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })']],
})
EOF

echo "Barres de titre activées. Redémarre Hyprland pour voir les changements."
