Feature: Kraft tests with token
  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"
    * def authFeature = call read('classpath:src/test/java/com/kraft/features/CreateKraftUserAndGetToken6.feature')
    * def accessToken = authFeature.userToken

    Scenario: get user information (kraft)
    Given url kraftBaseUrl
      Given path "user/me"
      Given header token = accessToken
      When  method get
      Then status 200




