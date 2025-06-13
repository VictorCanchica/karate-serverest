Feature: Obtener lista de usuarios

Background:
* configure ssl = true

  Scenario: Listar todos los usuarios
    Given url baseUrl + '/usuarios'
    When method GET
    Then status 200
    And match response contains deep { quantidade: '#number' }
