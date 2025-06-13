Feature: Eliminar usuario

Background:
* configure ssl = { trustAll: true }
* url 'https://serverest.dev'

Scenario: Eliminar usuario existente
  Given path 'usuarios', id
  When method delete
  Then status 200
  And match response.message == "Registro excluído com sucesso"

