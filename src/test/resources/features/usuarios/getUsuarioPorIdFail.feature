Feature: Obtener usuario por ID

Background:
* configure ssl = { trustAll: true }
* url 'https://serverest.dev'

Scenario: Obtener usuario inexistente
  * def usuarioInexistenteId = '1234567890123456'
  Given path 'usuarios', usuarioInexistenteId
  When method get
  Then status 400
  And match response.message == "Usuário não encontrado"

   * def usuarioIdFormatoErroneo = '123456789012345612341231231241234214'
  Given path 'usuarios', usuarioIdFormatoErroneo
  When method get
  Then status 400
  And match response.id == "id deve ter exatamente 16 caracteres alfanuméricos"