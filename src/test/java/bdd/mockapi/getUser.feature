Feature: Get user by id
  Me as a Mockapi user
  I want to get a user
  To display information

  Background:
    * url urlMockapi
    * print urlMockapi


  @regresion @getUser
  Scenario:
    * def obtenerId = call read('classpath:bdd/mockapi/createUser.feature@createUser')
    * def id = obtenerId.id
    * print id
    Given path '/buafest/v1/users/' + id
    * print "path", '/buafest/v1/users/' + id
    When method get
    Then status 200
    * print "response", response
    * def id = response.id
    * print "id", id

  @regresion @getAllUser
  Scenario:
    Given path '/buafest/v1/users'
    * print "path", '/buafest/v1/users'
    When method get
    Then status 200
    * print "response", response