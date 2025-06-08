@inventory
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def filterData = read("../testData/filter.json");

  @filterById
  Scenario: Filter item by id
    Given path '/filter'
    And param id = filterData.id
    When method get
    Then status 200
    And match response == filterData