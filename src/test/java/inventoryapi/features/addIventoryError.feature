@inventory
  @addItemError
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def duplicateData = read("../testData/duplicateProduct.json");

  Scenario: Add a new inventory item
    Given path '/add'
    And request duplicateData
    When method post
    Then status 400