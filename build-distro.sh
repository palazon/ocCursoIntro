#!/bin/bash
# Build distribution package in cursoIntroOpenCode/ from root sources
# Run from project root: bash build-distro.sh
set -e

DISTRO="cursoIntroOpenCode"

echo "==> Limpiando directorio $DISTRO..."
rm -rf "$DISTRO"/*.qmd "$DISTRO"/*.html "$DISTRO"/*_files/ \
       "$DISTRO"/custom.css "$DISTRO"/captura-tui.png "$DISTRO"/tab-key.svg \
       "$DISTRO"/README.md "$DISTRO"/AGENTS.md "$DISTRO"/render-all.sh

echo "==> Copiando fuentes desde contenidos/..."
mkdir -p "$DISTRO"
cp contenidos/index.qmd contenidos/ideas101.qmd "$DISTRO"/
cp contenidos/paso-*.qmd "$DISTRO"/
cp contenidos/custom.css contenidos/captura-tui.png contenidos/tab-key.svg "$DISTRO"/
cp README.md AGENTS.md render-all.sh "$DISTRO"/

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
