#!/bin/bash

fileprefix="$1"
tempFile="${fileprefix}-temp.md"

# Remove the section ## Inhalt or ## Table of contents from the file, including the heading itself
sed '/## Inhalt/,/## /{//!d;}; /## Inhalt/d; /## Table of contents/,/## /{//!d;}; /## Table of contents/d' "$fileprefix.md" > "$tempFile"

# Convert the modified markdown file to docx
pandoc "$tempFile" -o "$fileprefix.docx" -f gfm -t docx --shift-heading-level-by=-1 --toc

# Clean up the temporary file
rm -f "$tempFile"