@inventory
  @filterById
Feature: Filter Inventory by ID

  Background:
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def filterData = read("../testData/filterInventory.json");

  Scenario: Filter item by id
    Given path '/filter'
    And param id = filterData.id
    When method get
    Then status 200
    * karate.log('Expected Data:', filterData)
    And match response == filterData