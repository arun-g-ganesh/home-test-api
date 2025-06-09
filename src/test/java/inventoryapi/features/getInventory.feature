@inventory
  @getAll
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def responseData = read("../testData/getInventory.json");

  Scenario: Get all menu items
    When method get
    Then status 200
    And assert response.data.length >= 9
    * match each response.data contains responseData