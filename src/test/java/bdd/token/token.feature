Feature: Generate token

  @regresion @token
  Scenario: Get authentication token
    Given url urlBase
    * print urlBase
    And path "/auth"
    And request { "username": "admin", "password": "password123" }
    When method post
    Then status 200
    And match response.token != null
    * print response.token