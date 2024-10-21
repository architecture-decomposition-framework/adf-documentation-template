#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

# Directory of the documentation relative to the script directory
DOC_DIR="$SCRIPT_DIR"

# Directory name of the concepts within DOC_DIR without trailing /
CONCEPTS_DIR="concepts"

# File to be updated
TARGET_FILE="$DOC_DIR/05-architecture-concepts.md"

# Temporary file for the new table
TEMP_FILE=$(mktemp)

# Header of the table
echo "Concept | Short description" > $TEMP_FILE
echo "------- | ----------------" >> $TEMP_FILE

# Loop through all markdown files in the concepts directory
for file in "$DOC_DIR/$CONCEPTS_DIR/"*.md; do
  echo "Processing file: $file"
  
  # Extract the main title (first line)
  title=$(grep -m 1 '^# ' "$file" | sed 's/# //')
  echo "  Title: $title"
  
  # Extract the first paragraph after the title
  description=$(awk 'flag && NF {print; exit} /^# /{flag=1}' "$file")
  echo "  Description: $description"
  
  # Add the entry to the table
  echo "[$title]($CONCEPTS_DIR/$(basename $file)) | $description" >> $TEMP_FILE
done

awk '
  BEGIN { start=0; end=0; skip=0 }
  /<!-- Overview START -->/ { start=NR; skip=1; print "<!-- Overview START -->"; while ((getline line < "'"$TEMP_FILE"'") > 0) print line; next }
  /<!-- Overview END -->/ { end=NR; skip=0; print "<!-- Overview END -->"; next }
  { if (!skip) print $0 }
' $TARGET_FILE > ${TARGET_FILE}.tmp && mv ${TARGET_FILE}.tmp $TARGET_FILE

# Remove the temporary file
rm $TEMP_FILE

echo "Table in $TARGET_FILE has been updated."