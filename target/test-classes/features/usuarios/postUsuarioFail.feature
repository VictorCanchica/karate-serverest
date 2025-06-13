Feature: Crear usuario desde archivo JSON

Background:
* configure ssl = true
* url 'https://serverest.dev'
* def usuarios = read('classpath:data/usuarios.json')
* def nuevoUsuario = usuarios[0]

Scenario: No permitir crear usuario ya existente
  Given path 'usuarios'
  And request nuevoUsuario
  When method post
  Then status 400
  And match response.message == "Este email já está sendo usado"
