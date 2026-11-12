#!/bin/bash
# Script pour activer l'icône "œil" sur l'écran de connexion SDDM
# À exécuter après l'installation de YAHKONGO OS

echo "Activation de l'icône 'œil' pour afficher les mots de passe..."

# Trouver le fichier de thème SDDM (souvent Login.qml ou Main.qml)
# On cherche dans les dossiers de thèmes par défaut
THEME_DIR="/usr/share/sddm/themes"
if [ -d "$THEME_DIR" ]; then
    # Chercher le fichier Login.qml ou le fichier principal du thème
    for file in $(find "$THEME_DIR" -name "Login.qml" -o -name "Main.qml" 2>/dev/null); do
        echo "Fichier trouvé : $file"
        # Sauvegarde de l'original
        sudo cp "$file" "$file.bak"
        
        # Remplacer la ligne rightActions: [] par une liste vide (active le bouton)
        sudo sed -i 's/rightActions: \[\]/rightActions: [ showPasswordButton ]/g' "$file"
        
        # Si la ligne n'existe pas, on ajoute le bouton manuellement (plus complexe)
        # On vérifie si le remplacement a eu lieu
        if grep -q "showPasswordButton" "$file"; then
            echo "Le bouton 'œil' a été activé dans $file."
        else
            echo "Attention : la ligne 'rightActions' n'a pas été trouvée dans $file."
            echo "Tu devras peut-être activer le bouton manuellement dans les paramètres SDDM."
        fi
    done
else
    echo "Erreur : le dossier des thèmes SDDM n'existe pas."
fi

echo "Redémarre le service SDDM pour appliquer les changements : sudo systemctl restart sddm"
