# Informe de ajuste al estilo QMD — Curso OpenCode 101

**Fecha:** Junio 2026  
**Objetivo:** Documentar las convenciones de formato detectadas en los archivos `.qmd` del curso y consolidarlas en una guía de estilo (`estiloQmd.qmd`).

---

## Archivos analizados

| Archivo | Líneas | Tipo |
|---------|--------|------|
| `paso-00.qmd` | 86 | Paso |
| `paso-01.qmd` | — | Paso |
| `paso-02.qmd` | — | Paso |
| `paso-03.qmd` | — | Paso |
| `paso-04.qmd` | — | Paso |
| `paso-05.qmd` | 92 | Paso |
| `paso-06.qmd` | — | Paso |
| `paso-07.qmd` | — | Paso |
| `paso-08.qmd` | — | Paso |
| `paso-09.qmd` | — | Paso |
| `paso-10.qmd` | — | Paso |
| `paso-11.qmd` | 122 | Paso |
| `index.qmd` | 164 | Índice |
| `ideas101.qmd` | 993 | Catálogo |
| `faq.qmd` | 227 | FAQ |

**Total:** 15 archivos `.qmd`

---

## Convenciones detectadas

### 1. Front Matter

- Solo `title` (obligatorio), `author` y `date` (opcionales, solo en `paso-00.qmd`)
- Sin configuración de renderizado en el front matter

### 2. Estructura de pasos (paso-00 a paso-11)

Patrón fijo en todos los pasos:

1. `## Objetivo` + duración estimada en negrita
2. Secciones explicativas con `---` entre ellas
3. `## Manos a la obra` con ejercicios numerados (`### Ejercicio N`)
4. `## Resumen del paso` con viñetas `✅`
5. Transición al siguiente paso
6. Firma: `*Curso OpenCode 101 · Idea original de JA Palazón · Mayo 2026*`

### 3. Encabezados

| Nivel | Uso |
|-------|-----|
| `##` | Secciones principales |
| `###` | Ejercicios y subsecciones |
| `####` | No se usa |
| `#` | No se usa en el cuerpo |

### 4. Callouts (3 tipos)

- `::: {.callout-note}` — notas informativas
- `::: {.callout-tip}` — consejos y sugerencias
- `::: {.callout-warning}` — advertencias

Títulos fijos: *Cambia esto*, *¿Por qué?*, *Sugerencia para novatos*, *Sugerencia para expertos*, *Idea original*, *Consejo didáctico*, *Revisa tu progreso*.

### 5. Énfasis

| Elemento | Formato |
|----------|---------|
| Modos (Plan, Build) | *Cursiva* |
| Archivos informales | *Cursiva* |
| Duración | **Negrita** |
| Comandos | **Negrita** |
| Teclas | **Negrita** |
| Archivos formales | **Negrita** |

### 6. Prompts

- Bloque con `>` (blockquote)
- Referencia a archivos: `` `@nombre-archivo.md` ``
- Múltiples archivos: `` `@archivo1.md` `@archivo2.md` ``

### 7. Listas

- `-` para listas simples
- `1.`, `2.`, `3.` para ejercicios
- `✅` para resúmenes
- `🟢🟡🔴` para dificultad (solo ideas101.qmd)

### 8. Tablas

- Markdown estándar con alineación opcional (`:---:`, `:---`)

### 9. Imágenes

- `![alt](archivo.svg)` inline

### 10. Enlaces

- Internos: `[texto](archivo.html)`
- Externos: `[texto](https://...)`
- Anclas: `{#sec-alias}` (solo ideas101.qmd)

### 11. Separadores

- `---` entre secciones, entradas y bloques

### 12. Firmas

| Archivo | Firma |
|---------|-------|
| Pasos | `*Curso OpenCode 101 · Idea original de JA Palazón · Mayo 2026*` |
| ideas101.qmd | Igual que pasos |
| faq.qmd | `*Curso OpenCode 101 · Preguntas frecuentes · Junio 2026*` |
| index.qmd | `*Curso OpenCode 101 · Idea original de JA Palazón*` + `*Elaborado con OpenCode — Modelo deepseek-v4-flash-free · Mayo 2026*` |

---

## Convenciones específicas por archivo

### ideas101.qmd

- Secciones con anclas: `## Nombre {#sec-alias}`
- Badges de dificultad: 🟢 🟡 🔴
- Patrones fijos: `**Variación:**` y `**Sugerencia:**`
- Separadores `---` entre cada entrada
- 53 entradas en 11 secciones

### faq.qmd

- `## Sección` (7 secciones)
- `### Pregunta` seguido de respuesta directa
- `📖 [enlace](archivo.html)` para referencias
- Separadores `---` entre secciones
- 34 preguntas frecuentes

### index.qmd

- Tablas con enlaces a pasos
- Callouts: `::: {.callout-warning}` y `::: {.callout-tip}`
- Estructura en bloques (I, II, III)
- Mapa de capacidades como tabla

---

## Archivos generados

| Archivo | Descripción |
|---------|-------------|
| `estiloQmd.qmd` | Guía de estilo completa (16 secciones) |
| `estiloQmd.html` | HTML renderizado de la guía |
| `ajustado-estilo.md` | Este informe |

---

## Cambios en index.qmd

- Nueva sección `## Guía de estilo` con enlace a `estiloQmd.html`
- Callout "Para usuarios avanzados" actualizado con referencia a la guía

---

*Informe generado como parte del proceso de documentación del curso OpenCode 101.*
