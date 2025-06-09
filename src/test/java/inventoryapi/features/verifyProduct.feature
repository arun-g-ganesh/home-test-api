@inventory
@verifyProduct
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def productData = read("../testData/addProduct.json");

  Scenario: Validate added product is present in inventory
    When method get
    Then status 200
    * match response.data contains productData