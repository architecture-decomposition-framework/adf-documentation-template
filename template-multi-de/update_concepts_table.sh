#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

# Verzeichnis der Doku relativ zum Skriptverzeichnis
DOC_DIR="$SCRIPT_DIR"

# Verzeichnisname der Konzepte innerhalb von DOC_DIR ohne / am Ende
CONCEPTS_DIR="concepts"

# Datei, die aktualisiert werden soll
TARGET_FILE="$DOC_DIR/05-architekturkonzepte.md"

# Temporäre Datei für die neue Tabelle
TEMP_FILE=$(mktemp)

# Header der Tabelle
echo "Konzept | Kurzbeschreibung" > $TEMP_FILE
echo "------- | ----------------" >> $TEMP_FILE

# Durchlaufe alle Markdown-Dateien im concepts-Verzeichnis
for file in "$DOC_DIR/$CONCEPTS_DIR/"*.md; do
  echo "Verarbeite Datei: $file"
  
  # Extrahiere den Haupttitel (erste Zeile)
  title=$(grep -m 1 '^# ' "$file" | sed 's/# //')
  echo "  Titel: $title"
  
  # Extrahiere den ersten Absatz nach dem Titel
  description=$(awk 'flag && NF {print; exit} /^# /{flag=1}' "$file")
  echo "  Beschreibung: $description"
  
  # Füge den Eintrag zur Tabelle hinzu
  echo "[$title]($CONCEPTS_DIR/$(basename $file)) | $description" >> $TEMP_FILE
done

awk '
  BEGIN { start=0; end=0; skip=0 }
  /<!-- Overview START -->/ { start=NR; skip=1; print "<!-- Overview START -->"; while ((getline line < "'"$TEMP_FILE"'") > 0) print line; next }
  /<!-- Overview END -->/ { end=NR; skip=0; print "<!-- Overview END -->"; next }
  { if (!skip) print $0 }
' $TARGET_FILE > ${TARGET_FILE}.tmp && mv ${TARGET_FILE}.tmp $TARGET_FILE

# Entferne die temporäre Datei
rm $TEMP_FILE

echo "Tabelle in $TARGET_FILE wurde aktualisiert."