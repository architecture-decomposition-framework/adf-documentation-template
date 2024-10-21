#!/bin/bash

# Verzeichnis der Doku
DOC_DIR="."

# Datei, die aktualisiert werden soll
TARGET_FILE="$DOC_DIR/inhalt.md"

# Temporäre Datei für das neue Inhaltsverzeichnis
TEMP_FILE=$(mktemp)

# Mit Leerzeile beginnen
echo -e "\n<!-- Nicht manuell bearbeiten. Zum Aktualisieren des Inhaltsverzeichnisses update-toc.sh ausführen. -->\n" > $TEMP_FILE

# Funktion zum Erstellen eines HTML-Ankers aus einer Überschrift
# Dies ist ein Nicht-Dokumentiertes Feature von GitHub-Markdown-zu-HTML-
# Konvertierung, dass automatisch aus den Überschriften HTML-Anker erzeugt
# werden. Hierbei bleiben alle Bindestriche erhalten, 
# werden alle Leerzeichen durch - ersetzt, alle anderen
# Nicht-Buchstaben gelöscht und alle Buchstabe in Kleinbuchstaben umgewandelt.
# Letzteres funktioniert mit dem tr-Kommando unter Windows leider nicht bei
# Umlauten - daher werden diese zusätzlich mit sed per "Lookup" ersetzt. Falls weitere
# Buchstaben vorkommen können, muss man diese noch ergänzen.
create_anchor() {
  echo "$1" \
    | tr '[:upper:]' '[:lower:]' \
    | sed -e 'y/ÄÖÜÀÁÂÃÅÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝ/äöüàáâãåçèéêëìíîïñòóôõöùúûüý/' \
          -e 's/[^a-zA-Z0-9äöüÄÖÜßàáâãäåçèéêëìíîïñòóôõöùúûüýÿÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝŸ -]//g' \
          -e 's/ /-/g'
}

# Durchlaufe alle Markdown-Dateien im Verzeichnis, ignoriere Dateien, die mit 00- beginnen
for file in "$DOC_DIR"/[0-9][1-9]*.md; do
  # Extrahiere den Haupttitel (erste Zeile)
  main_title=$(grep -m 1 '^# ' "$file" | sed 's/# //')
  main_file=$(basename "$file")
  echo "- [$main_title]($main_file)" >> $TEMP_FILE
  
  # Extrahiere alle relevanten Zeilen (## und ###), ignoriere Überschriften mit <!-- omit in toc -->
  grep -E '^## |^### ' "$file" | grep -v '<!-- omit in toc -->' | while IFS= read -r line; do
    if [[ "$line" == '## '* ]]; then
      subtitle="${line#### }"
      anchor=$(create_anchor "$subtitle")
      echo "  - [$subtitle]($main_file#$anchor)" >> $TEMP_FILE
    elif [[ "$line" == '### '* ]]; then
      subtitle="${line##### }"
      anchor=$(create_anchor "$subtitle")
      echo "    - [$subtitle]($main_file#$anchor)" >> $TEMP_FILE
    fi
  done
done

# Aktualisiere das Inhaltsverzeichnis in der Zieldatei
awk '
  BEGIN { start=0; end=0; skip=0 }
  /^# Inhalt.*$/ { start=NR; skip=1; print; while ((getline line < "'"$TEMP_FILE"'") > 0) print line; next }
  { if (!skip) print $0 }
' $TARGET_FILE > ${TARGET_FILE}.tmp && mv ${TARGET_FILE}.tmp $TARGET_FILE

# Entferne die temporäre Datei
rm $TEMP_FILE

echo "Inhaltsverzeichnis in $TARGET_FILE wurde aktualisiert."