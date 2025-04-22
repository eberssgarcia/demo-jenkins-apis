Feature: Update user by id
  Me as a Mockapi user
  I want to delete a user


  Background:
    * url urlMockapi
    * print urlMockapi


  @regresion @deleteUser
  Scenario: Delete user by id
    * def obtenerId = call read('classpath:bdd/mockapi/updateUser.feature@updateUser')
    * def id = obtenerId.id
    * print id
    Given path '/buafest/v1/users/' + id
    * print "path", '/buafest/v1/users/' + id
    When method delete
    Then status 200
    * print "response", response
# Obtener datos de cliente eliminado
    Given path '/buafest/v1/users/' + id
    * print "path", '/buafest/v1/users/' + id
    When method delete
    Then status 404
    * print "response", response