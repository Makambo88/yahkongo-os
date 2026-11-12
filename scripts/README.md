# Scripts YAHKONGO OS

Ce dossier contient les scripts d'automatisation pour préparer le système après l'installation.

## Scripts disponibles
- **install_yahkongo_bridge.sh** : Installe Flatpak, Wine, Bottles et configure les associations de fichiers pour que les `.exe` et `.AppImage` s'ouvrent d'un double-clic.
- **enable_password_eye.sh** : Active l'icône "œil" sur l'écran de connexion SDDM pour voir le mot de passe.

## Comment les utiliser ?
Ouvre un terminal et tape :
```bash
bash scripts/install_yahkongo_bridge.sh

## Compilation de l'ISO YAHKONGO OS

Pour créer ta propre clé USB bootable YAHKONGO OS :

1. Clone ton dépôt sur une machine Arch Linux :
   ```bash
   git clone https://github.com/Makambo88/yahkongo-os.git
   cd yahkongo-os
