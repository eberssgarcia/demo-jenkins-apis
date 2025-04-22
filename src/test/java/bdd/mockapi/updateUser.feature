Feature: Update user by id
  Me as a Mockapi user
  I want to update a user
  To display new information


  Background:
    * url urlMockapi
    * print urlMockapi


  @regresion @updateUser
  Scenario: Update user by id
    * def obtenerId = call read('classpath:bdd/mockapi/getUser.feature@getUser')
    * def id = obtenerId.id
    * print id
    Given path '/buafest/v1/users/' + id
    * print "path", '/buafest/v1/users/' + id
    * def dataRequest = read('classpath:request/mockapi/update-user-200.json')
    * print "dataRequest", dataRequest
    And request dataRequest
    When method put
    Then status 200
    * print "response", response
# Obtener datos de cliente actualizado
    Given path '/buafest/v1/users/' + id
    * print "path", '/buafest/v1/users/' + id
    When method get
    Then status 200
    * print "response", response