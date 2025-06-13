
# Proyecto CRUD Usuario - Karate

Este proyecto automatiza pruebas para un API REST de usuarios en https://serverest.dev.

## Qué hay

- Flujo CRUD básico: crear, leer, actualizar, borrar usuario.
- Manejo de IDs entre escenarios.
- Manejo básico de SSL (trustAll).
- Datos de usuarios desde archivo JSON.

## Cómo usar

1. Ejecutar tests con Maven o Karate CLI.
2. Ver reportes en `target/karate-reports/karate-summary.html`.
3. Modificar JSON para cambiar datos de prueba.


## Notas

- Los escenarios usan llamadas con `call read()` para modularidad.
- SSL configurado para evitar problemas de certificados.

