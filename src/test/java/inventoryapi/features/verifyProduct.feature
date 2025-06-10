@inventory
@verifyProduct
Feature: Verify Recently Added Product

  Background:
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def productData = read("../testData/addInventory.json");

  Scenario: Validate added product is present in inventory
    Given path '/filter'
    And param id = productData.id
    When method get
    Then status 200
    * karate.log('Expected Data:', productData)
    * match response == productData