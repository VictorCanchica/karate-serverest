Feature: Obtener usuario por ID

Background:
* configure ssl = { trustAll: true }
* url 'https://serverest.dev'

Scenario: Obtener usuario existente
  Given path 'usuarios', id
  When method get
  Then status 200
  And match response._id == id
