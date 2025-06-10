@inventory
  @getAll
Feature: Retrieve All Inventory Items

  Background:
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def responseData = read("../testData/getInventory.json");

  Scenario: Get all menu items
    When method get
    Then status 200
    * karate.log('API Response:', response)
    And assert response.data.length >= 9
    * match each response.data contains responseData