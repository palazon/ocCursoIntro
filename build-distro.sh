#!/bin/bash
# Build distribution package in cursoIntroOpenCode/ from root sources
# Run from project root: bash build-distro.sh
set -e

DISTRO="cursoIntroOpenCode"

echo "==> Limpiando directorio $DISTRO..."
rm -rf "$DISTRO"/*.qmd "$DISTRO"/*.html "$DISTRO"/*_files/ \
       "$DISTRO"/custom.css "$DISTRO"/captura-tui.png "$DISTRO"/tab-key.svg \
       "$DISTRO"/README.md "$DISTRO"/AGENTS.md "$DISTRO"/render-all.sh

echo "==> Copiando fuentes desde raíz..."
cp index.qmd ideas101.qmd custom.css captura-tui.png tab-key.svg \
   README.md AGENTS.md render-all.sh "$DISTRO"/
cp paso-*.qmd "$DISTRO"/

echo "==> Renderizando HTML en $DISTRO/..."
cd "$DISTRO"
for f in *.qmd; do
  echo "     $f ..."
  quarto render "$f"
done

echo ""
echo "========================================"
echo "  Distro lista en $DISTRO/"
echo "========================================"
