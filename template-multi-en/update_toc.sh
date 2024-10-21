#!/bin/bash

# Directory of the documentation
DOC_DIR="."

# File to be updated
TARGET_FILE="$DOC_DIR/toc.md"

# Temporary file for the new table of contents
TEMP_FILE=$(mktemp)

# Start with an empty line
echo -e "\n<!-- Do not edit manually. To update the table of contents, run update-toc.sh. -->\n" > $TEMP_FILE

# Function to create an HTML anchor from a heading
# This is an undocumented feature of GitHub Markdown to HTML
# conversion, which automatically generates HTML anchors from headings.
# All hyphens are retained, spaces are replaced with hyphens,
# all other non-letter characters are removed, and all letters are converted to lowercase.
# The latter does not work with the tr command under Windows for umlauts,
# so these are additionally replaced with sed using a "lookup". If other
# characters occur, they must be added.
create_anchor() {
  echo "$1" \
    | tr '[:upper:]' '[:lower:]' \
    | sed -e 'y/ÄÖÜÀÁÂÃÅÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝ/äöüàáâãåçèéêëìíîïñòóôõöùúûüý/' \
          -e 's/[^a-zA-Z0-9äöüÄÖÜßàáâãäåçèéêëìíîïñòóôõöùúûüýÿÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝŸ -]//g' \
          -e 's/ /-/g'
}

# Iterate over all Markdown files in the directory, ignore files starting with 00-
for file in "$DOC_DIR"/[0-9][1-9]*.md; do
  # Extract the main title (first line)
  main_title=$(grep -m 1 '^# ' "$file" | sed 's/# //')
  main_file=$(basename "$file")
  echo "- [$main_title]($main_file)" >> $TEMP_FILE
  
  # Extract all relevant lines (## and ###), ignore headings with <!-- omit in toc -->
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

# Update the table of contents in the target file
awk '
  BEGIN { start=0; end=0; skip=0 }
  /^# Table of Contents.*$/ { start=NR; skip=1; print; while ((getline line < "'"$TEMP_FILE"'") > 0) print line; next }
  { if (!skip) print $0 }
' $TARGET_FILE > ${TARGET_FILE}.tmp && mv ${TARGET_FILE}.tmp $TARGET_FILE

# Remove the temporary file
rm $TEMP_FILE

echo "Table of contents in $TARGET_FILE has been updated."
