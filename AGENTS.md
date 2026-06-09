# Curso: OpenCode 101 + 102 — Cursos de formación para creadores de contenido

Este proyecto contiene dos cursos para **docentes y redactores técnicos** que quieren aprender a usar OpenCode como asistente de documentación.

## Cursos

### OpenCode 101 — Curso básico (pasos 00-11)
Fundamentos: sistema de archivos, instalación, Plan vs Build, prompts,
contenido externo, investigación, reestructuración, traducción, tablas,
comandos, revisión, entrega final.

### OpenCode 102 — Automatización y personalización
Temas avanzados: agentes a medida, skills, MCP, CLI, permisos,
colaboración en equipo. El curso 102 está en un proyecto separado.

## Estructura del proyecto

- `contenidos/` — archivos fuente del curso
  - `index.qmd` — visión general del curso básico
  - `paso-XX.qmd` — sesiones del curso básico (00-11)
  - `ideas101.qmd` / `ideas101.html` — ideas de uso
  - `custom.css` — hoja de estilos personalizada
  - `captura-tui.png`, `tab-key.svg` — recursos gráficos
- `cursoIntroOpenCode/` — paquete redistribuible (generado con `bash build-distro.sh`)

## Generar HTML

```
bash render-all.sh
```

## Público objetivo

Personas que crean documentación en entornos empresariales o educativos:
manuales, guías, informes, FAQs, plantillas.
**No se asumen conocimientos de programación**.

## Tono del curso

- Explicaciones breves, lenguaje natural
- Ejercicios prácticos ("Manos a la obra")
- Formato `.qmd` con salida HTML usando `custom.css`
- Numeración de pasos: "0.", "1.", "2." (sin la palabra "Paso")
- Cursivas para énfasis visual, negritas solo para énfasis semántico

## Sesión actual (2026-06-08)

### Hecho
- **ideas101.qmd**: Añadidos badges de nivel (🟢🟡🔴) tras cada título `###` (32 entradas: 20 🟢, 6 🟡, 4 🔴); añadido `**Sugerencia:**` antes de cada `---` separador; fichero de 505 → 569 líneas; renderizado a HTML
- **ideas2.qmd**: Reescritura completa — reordenación temática (Documentación→Planificación→Compras→Alimentación→Sistema→Comandos); badges de nivel en 21 entradas (13 🟢, 6 🟡, 2 🔴); sugerencias en cada entrada; sección nueva "Sistema y mantenimiento" con 6 entradas (diagnóstico errores, backups, inventario, mantenimiento, post-formateo, seguridad); comandos `/minuta` y `/liberar` movidos a sección propia; corregida "versión en PDF" → "versión imprimible"; 255 → ~370 líneas; renderizado
- **fusionideas.qmd**: Creado nuevo documento fusionando ideas101.qmd (32 entradas) + ideas2.qmd (20 entradas, una fusionada) → 51 entradas en 10 secciones ordenadas alfabéticamente (Academia, Aficiones, Alimentación, Comandos, Compras y finanzas, Deportes, Documentación, Empresa, Hogar, Planificación, Sistema y mantenimiento); índice alfabético inicial con referencias cruzadas a secciones; entradas ordenadas por dificultad 🟢→🟡→🔴 dentro de cada sección (29 🟢, 17 🟡, 5 🔴); secciones con intro breve; renderizado

