#!/bin/bash

# Path to FreeCAD (Adjust this path to your installation, e.g., /usr/bin/freecad or AppImage path)
FREECAD_PATH="freecad"

# Evaluate argument
case "$1" in
    -de)
        echo "Starte FreeCAD auf Deutsch..."
        LANG=de_DE.UTF-8 "$FREECAD_PATH" &
        ;;
    -en)
        echo "Launching FreeCAD in English..."
        LANG=en_US.UTF-8 "$FREECAD_PATH" &
        ;;
    -ru)
        echo "Запуск FreeCAD на русском языке..."
        LANG=ru_RU.UTF-8 "$FREECAD_PATH" &
        ;;
    -fr)
        echo "Lancement de FreeCAD en français..."
        LANG=fr_FR.UTF-8 "$FREECAD_PATH" &
        ;;
    -hu)
        echo "FreeCAD indult magyarul..."
        LANG=hu_HU.UTF-8 "$FREECAD_PATH" &
        ;;
    *)
        echo "Usage:"
        echo "   fcad -de   (Deutsch)"
        echo "   fcad -en   (English)"
        echo "   fcad -fr   (Français)"
        echo "   fcad -ru   (Русский)"
        echo "   fcad -hu   (Magyar)"
        exit 1
        ;;
esac

# Prevents the script from killing FreeCAD when the terminal is closed
disown