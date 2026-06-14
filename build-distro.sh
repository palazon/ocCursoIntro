#!/bin/bash
# Build distribution package in cursoIntroOpenCode/ from root sources
# Run from project root: bash build-distro.sh
set -e

DISTRO="cursoIntroOpenCode"

echo "==> Limpiando directorio $DISTRO..."
rm -rf "$DISTRO"/*.qmd "$DISTRO"/*.html "$DISTRO"/*_files/ \
       "$DISTRO"/*.pdf "$DISTRO"/*.png "$DISTRO"/*.svg \
       "$DISTRO"/custom.css \
       "$DISTRO"/README.md "$DISTRO"/AGENTS.md "$DISTRO"/render-all.sh "$DISTRO"/.gitignore

echo "==> Copiando fuentes desde contenidos/..."
mkdir -p "$DISTRO"
cp contenidos/index.qmd contenidos/ideas101.qmd contenidos/faq.qmd \
   contenidos/oc101.qmd contenidos/markdown-pandoc-quarto.qmd \
   contenidos/presentacionCursoOC101.qmd "$DISTRO"/
cp contenidos/paso-*.qmd "$DISTRO"/
cp contenidos/custom.css "$DISTRO"/
cp contenidos/captura-TUI.png contenidos/tab-key.svg \
   contenidos/captura-presentacion.png \
   contenidos/terminalUsuario.png contenidos/terminalUsuarioBasico.png "$DISTRO"/
cp contenidos/oc101.pdf contenidos/markdown-pandoc-quarto.pdf "$DISTRO"/
cp README.md AGENTS.md render-all.sh "$DISTRO"/

echo "==> Renderizando HTML en $DISTRO/..."
cd "$DISTRO"
for f in *.qmd; do
  echo "     $f ..."
  quarto render "$f"
done

echo ""
echo "==> Empaquetando $DISTRO.zip..."
zip -r "../$DISTRO.zip" .

echo ""
echo "========================================"
echo "  Distro lista en $DISTRO/"
echo "  ZIP creado: ../$DISTRO.zip"
echo "========================================"
