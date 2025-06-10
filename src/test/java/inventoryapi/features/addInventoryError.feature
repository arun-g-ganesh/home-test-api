@inventory
  @addItemError
Feature: Handle Duplicate Inventory Errors

  Background:
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def duplicateData = read("../testData/addInventoryError.json");

  Scenario: Add a new inventory item
    Given path '/add'
    And request duplicateData
    When method post
    Then status 400
    * karate.log('API Response:', response)