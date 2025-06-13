Feature: Actualizar usuario existente

Background:
* configure ssl = { trustAll: true }
* url 'https://serverest.dev'

Scenario: Actualizar información del usuario
  * def usuarios = read('classpath:data/usuarios.json')
  * def usuarioEditado = usuarios[1]  

  Given path 'usuarios', id
  And request usuarioEditado
  When method put
  Then status 200
  And match response.message == "Registro alterado com sucesso"
