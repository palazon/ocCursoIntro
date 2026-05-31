# OpenCode 101 — Curso básico para creadores de contenido

Curso de formación paso a paso para aprender a usar [OpenCode](https://opencode.ai) como asistente de inteligencia artificial en tareas de documentación, redacción e investigación.

## ¿Para quién es este curso?

Para **docentes, redactores técnicos y cualquier persona** que trabaje creando documentos en entornos empresariales o educativos: manuales, guías, informes, FAQs, actas, plantillas.

No necesitas saber programar.

## Contenido del paquete

| Archivos | Descripción |
|----------|-------------|
| `index.qmd` / `index.html` | Página de inicio con la estructura del curso y mapa de capacidades |
| `paso-00.qmd` a `paso-11.qmd` | Fuentes de cada sesión (formato Quarto) |
| `paso-00.html` a `paso-11.html` | Sesiones listas para ver en navegador |
| `custom.css` | Hoja de estilos personalizada |
| `captura-tui.png` | Captura de la interfaz de OpenCode |
| `tab-key.svg` | Icono de la tecla Tab |
| `AGENTS.md` | Instrucciones para OpenCode sobre este proyecto |
| `README.md` | Este documento |
| `render-all.sh` | Script para regenerar todos los HTML |

## Cómo usar este curso

1. Abre `index.html` en tu navegador
2. Navega al paso que te interese desde la tabla o el índice lateral
3. Cada paso tiene ejercicios prácticos ("Manos a la obra")
4. Ten OpenCode abierto en la misma carpeta mientras lees

## Requisitos

- OpenCode instalado (se explica en el Paso 2)
- Un navegador web para ver los HTML
- Quarto (opcional, solo si quieres modificar las fuentes y regenerar)

## Regenerar los HTML

Si modificas algún `.qmd`, regenera todos los HTML con:

```bash
bash render-all.sh
```

## Estructura del curso (12 pasos, 3 bloques)

### Bloque I — Fundamentos (pasos 0 a 3)
| Paso | Tema |
|------|------|
| 0 | ¿Qué es OpenCode? |
| 1 | El sistema de archivos y comandos básicos |
| 2 | Primeros minutos: instalación e interfaz |
| 3 | Plan vs Build, prompts, referencias @ |

### Bloque II — El taller de documentos (pasos 4 a 8)
| Paso | Tema |
|------|------|
| 4 | Trabajar con contenido externo |
| 5 | Investigar en internet |
| 6 | Reestructurar documentos |
| 7 | Traducir y adaptar audiencias |
| 8 | Tablas, índices, glosarios, plantillas |

### Bloque III — Productividad y cierre (pasos 9 a 11)
| Paso | Tema |
|------|------|
| 9 | Comandos personalizados |
| 10 | Revisión asistida de documentos |
| 11 | Compartir y entregar |

---

*Curso OpenCode 101 · Idea original de JA Palazón*
*Elaborado con OpenCode — Modelo deepseek-v4-flash-free · Mayo 2026*
