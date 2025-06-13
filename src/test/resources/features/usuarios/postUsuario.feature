Feature: Crear usuario desde archivo JSON

Background:
* configure ssl = true
* url 'https://serverest.dev'
* def usuarios = read('classpath:data/usuarios.json')
* def nuevoUsuario = usuarios[0]

Scenario: Crear usuario exitosamente
  Given path 'usuarios'
  And request nuevoUsuario
  When method post
  Then status 201
  * def idUsuario = response._id
  * print 'ID del usuario creado:', idUsuario
  * def usuarioCreado = { id: '#(idUsuario)' }
  * karate.set('usuarioCreado', usuarioCreado)

