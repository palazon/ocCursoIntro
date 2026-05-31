#!/bin/bash
# Render all course files to HTML
cd contenidos
quarto render index.qmd
quarto render ideas101.qmd
for f in paso-*.qmd; do
  quarto render "$f"
done
echo "Todos los HTML generados en $(pwd)"
