Feature: Eliminar usuario

Background:
* configure ssl = { trustAll: true }
* url 'https://serverest.dev'

Scenario: Intentar eliminar usuario inexistente
  * def usuarioInexistenteId = '123456789012345678901234'
  Given path 'usuarios', usuarioInexistenteId
  When method delete
  Then status 200
  And match response.message == "Nenhum registro excluído"
