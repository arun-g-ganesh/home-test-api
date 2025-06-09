@inventory
@addMissingFields
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def missingFieldData = read("../testData/addMissingInventory.json");
    * def errorMessage = read("../testData/missingInventoryError.json");

  Scenario: Add item with missing information
    Given path '/add'
    And request missingFieldData
    When method post
    Then status 400
    And match response contains errorMessage.missingItemError