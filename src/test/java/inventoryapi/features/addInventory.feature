@inventory
@addItem
Feature: Add Inventory Items

  Background:
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def productData = read("../testData/addInventory.json");
    * def productId = Math.floor(Math.random() * 1000).toString();
    * karate.log('Generated Unique ID:', productId)
    * set productData.id = productId

  Scenario: Add a dynamically generated product
    Given path '/add'
    And request productData
    When method post
    Then status 200
    And karate.write(productData, 'test-classes/inventoryapi/testData/addInventory.json')
    * karate.log('Product Data:', productData)