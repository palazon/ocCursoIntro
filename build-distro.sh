#!/bin/bash
# Build distribution package cursoIntroOpenCode.zip
# Run from project root: bash build-distro.sh
set -e

PROJECT_DIR="$(pwd)"
DISTRO="/tmp/opencode/IntroOpenCode"
ZIP_NAME="cursoIntroOpenCode.zip"

echo "==> Limpiando directorio temporal..."
rm -rf "$DISTRO"
mkdir -p "$DISTRO"

echo "==> Copiando fuentes desde contenidos/..."
cp contenidos/index.qmd contenidos/ideas101.qmd contenidos/faq.qmd \
   contenidos/markdown-pandoc-quarto.qmd "$DISTRO"/
cp contenidos/paso-*.qmd "$DISTRO"/
cp contenidos/custom.css "$DISTRO"/
cp contenidos/captura-TUI.png contenidos/tab-key.svg \
   contenidos/captura-presentacion.png \
   contenidos/terminalUsuario.png contenidos/terminalUsuarioBasico.png "$DISTRO"/
cp contenidos/markdown-pandoc-quarto.pdf "$DISTRO"/

echo "==> Generando README.md para la distribución..."
cat > "$DISTRO/README.md" << 'READEOF'
# OpenCode 101 — Curso básico para creadores de contenido

Curso práctico de **12 pasos** para aprender a usar OpenCode como
asistente de IA en tareas de documentación técnica, redacción de
informes, material educativo e investigación.

## Cómo usar este curso

1. Asegúrate de tener [OpenCode](https://opencode.ai) instalado
2. Abre `index.html` en tu navegador para ver el curso
3. Sigue los pasos secuencialmente

Para más información visita
<https://palazon.github.io/ocCursoIntro/>.

---

*Curso OpenCode 101 · JA Palazón · Mayo 2026*
READEOF

echo "==> Generando render-all.sh para la distribución..."
cat > "$DISTRO/render-all.sh" << 'SHEOF'
#!/bin/bash
# Render all course files to HTML
quarto render *.qmd
echo "Todos los HTML generados en $(pwd)"
SHEOF
chmod +x "$DISTRO/render-all.sh"

echo "==> Copiando _quarto.yml para el renderizado..."
cp contenidos/_quarto.yml "$DISTRO"/

echo "==> Renderizando HTML en $DISTRO/..."
cd "$DISTRO"
for f in *.qmd; do
  echo "     $f ..."
  quarto render "$f"
done

echo ""
echo "==> Eliminando _quarto.yml y caché de Quarto..."
rm "$DISTRO/_quarto.yml"
rm -rf "$DISTRO/.quarto"

echo "==> Empaquetando $ZIP_NAME..."
cd /tmp/opencode
rm -f "$PROJECT_DIR/$ZIP_NAME"
zip -r "$PROJECT_DIR/$ZIP_NAME" IntroOpenCode/

echo ""
echo "==> Limpiando..."
rm -rf "$DISTRO"

echo ""
echo "========================================"
echo "  ZIP creado: $PROJECT_DIR/$ZIP_NAME"
echo "  Extrae con: unzip $ZIP_NAME -d destino/"
echo "  Abre:       IntroOpenCode/index.html"
echo "========================================"
