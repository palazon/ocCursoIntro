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
  - `ideas101.qmd` / `ideas101.html` — ideas de uso (53 entradas en 11 secciones)
  - `faq.qmd` / `faq.html` — preguntas frecuentes (34 preguntas en 7 secciones)
  - `custom.css` — hoja de estilos personalizada
  - `captura-TUI.png`, `tab-key.svg`, `terminalUsuario.png`, `terminalUsuarioBasico.png` — recursos gráficos
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

## Sesión actual (2026-06-10)

### Hecho
- **ideas101.qmd**: Fusionadas ideas101.qmd + ideas2.qmd → 53 entradas en 11 secciones ordenadas (Documentación, Empresa, Academia, Hogar, Alimentación, Aficiones, Compras, Deportes, Planificación, Comandos, Sistema y mantenimiento); badges de nivel (🟢🟡🔴); `**Sugerencia:**` antes de cada separador; entrada "Comparar modelos gratuitos disponibles en OpenCode" sin nombres concretos de modelos; ~993 líneas; renderizado
- **faq.qmd**: 34 preguntas frecuentes en 7 secciones (Uso general, Archivos y proyectos, Plan vs Build, Modelos de IA, Permisos, Comandos, Personalización); enlazado desde `index.qmd` y `README.md`; renderizado
- **paso-02.qmd**: Añadido callout-tip "¿Qué modelo usa OpenCode?" al final de la sección de modelos
- **paso-03.qmd**: Añadido callout-warning sobre consecuencias de no usar `opencode -c` o el directorio equivocado
