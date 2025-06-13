###  Karate API Test - Serverest

Este proyecto contiene pruebas automatizadas para la API pública de [Serverest](https://serverest.dev) utilizando [Karate DSL](https://github.com/karatelabs/karate).

####  Estructura principal

- **Features en**: `src/test/resources/features/usuarios/`
- **Datos JSON en**: `src/test/resources/data/usuarios.json`
- **Runner en**: `src/test/java/UsuariosTest.java`
- **Reportes**: `target/karate-reports/karate-summary.html`

---

####  Flujo `CRUD + negativos`

Archivo principal:
```
features/usuarios/crudUsuario.feature
```

Este ejecuta los siguientes escenarios a través de `call read(...)`:

| Feature                            | Descripción                                 |
|------------------------------------|---------------------------------------------|
| `postUsuario.feature`              | Crear un usuario (válido)                   |
| `postUsuarioFail.feature`          | No permitir crear usuario ya existente      |
| `getUsuarios.feature`              | Obtener listado completo de usuarios        |
| `getUsuarioPorId.feature`          | Obtener usuario existente por ID            |
| `getUsuarioPorIdFail.feature`      | Obtener usuario con ID inexistente          |
| `putUsuario.feature`               | Editar usuario existente                    |
| `deleteUsuario.feature`            | Eliminar usuario existente                  |
| `deleteUsuarioFail.feature`        | Eliminar usuario inexistente                |

---

#### 📝 Datos utilizados

- Los usuarios se leen desde:  
  ```
  classpath:data/usuarios.json
  ```
  - El primer objeto del JSON se usa para crear
  - El segundo para editar

---

#### 📊 Ver resultados

Después de ejecutar:
```bash
mvn test
```

Abre el reporte en:
```
target/karate-reports/karate-summary.html
```