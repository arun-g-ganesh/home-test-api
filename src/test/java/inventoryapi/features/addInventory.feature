@inventory
@addItem
Feature: Inventory API Tests

  Background:
    * url baseUrl
    * def productData = read("../testData/addProduct.json");
    * def productId = Math.floor(Math.random() * 1000);
    * set productData.id = productId

  Scenario: Add a dynamically generated product
    Given path '/add'
    And request productData
    When method post
    Then status 200
    And karate.write(productData, 'test-classes/inventoryapi/testData/addProduct.json')