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

- `index.qmd` — visión general del curso básico
- `paso-XX.qmd` — sesiones del curso básico
- `custom.css` — hoja de estilos personalizada para la salida HTML
- `ideas101.qmd` / `ideas101.html` — ideas de uso en empresa, academia, deportes, hogar y aficiones
- `cursoIntroOpenCode/` — paquete redistribuible con ambos cursos

## Generar HTML

Para renderizar todos los archivos:

```
quarto render
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

