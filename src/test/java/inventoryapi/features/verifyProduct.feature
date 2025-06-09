@inventory
@verifyProduct
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def productData = read("../testData/addInventory.json");

  Scenario: Validate added product is present in inventory
    Given path '/filter'
    And param id = productData.id
    When method get
    Then status 200
    * match response == productData