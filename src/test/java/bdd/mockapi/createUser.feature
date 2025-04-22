Feature: Create user
  Me as a Mockapi user
  I want to create a user
  To save information

  Background:
    * url urlMockapi
    * print urlMockapi

  @regresion @createUser
  Scenario Outline: Create user
    Given path '/buafest/v1/users'
    * def dataRequest = read('classpath:request/mockapi/' + path)
    And request dataRequest
    When method post
    Then status 201
    * print "response", response
    * def id = response.id
    * print id
    Examples:
      | path                 |
      | create-user-201.json |