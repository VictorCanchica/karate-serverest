Feature: Ejecutar flujo CRUD de Usuario

  Scenario: Ejecutar flujo CRUD
    * def result = call read('classpath:features/usuarios/postUsuario.feature')
    * def idUsuario = result.usuarioCreado.id
    * print 'ID obtenido:', idUsuario

    * call read('classpath:features/usuarios/getUsuarios.feature')
    * call read('classpath:features/usuarios/getUsuarioPorId.feature') { id: '#(idUsuario)' }
    * call read('classpath:features/usuarios/putUsuario.feature') { id: '#(idUsuario)' }
    * call read('classpath:features/usuarios/deleteUsuario.feature') { id: '#(idUsuario)' }
