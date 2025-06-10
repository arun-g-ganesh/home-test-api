@inventory
@addMissingFields
Feature: Validate Missing Inventory Fields

  Background:
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def missingFieldData = read("../testData/addMissingInventory.json");
    * def errorMessage = read("../testData/missingInventoryError.json");

  Scenario: Add item with missing information
    Given path '/add'
    And request missingFieldData
    When method post
    Then status 400
    And match response contains errorMessage.missingItemError