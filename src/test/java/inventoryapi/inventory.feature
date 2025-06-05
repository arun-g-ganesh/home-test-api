@inventory
Feature: Inventory API Tests

  Background:
    * url baseUrl

  @getAll
  Scenario: Get all menu items
    Given path 'inventory'
    When method get
    Then status 200
    And assert response.data.length >= 9
    * match each response.data contains { id: '#notnull', name: '#notnull', price: '#notnull', image: '#notnull' }

  @filterById
  Scenario Outline: Filter item by id
    Given path '/inventory/filter'
    And param id = <id>
    When method get
    Then status 200
    And match response ==
    """
    {
      id: <id>,
      name: <name>,
      price: <price>,
      image: <image>
    }
    """
    Examples:
      | id  | name              | price | image      |
      | "3" | 'Baked Rolls x 8' | '$10' | 'roll.png' |

  @addItem
  Scenario: Add a dynamically generated product
    Given path '/inventory/add'
    And request product
    When method post
    Then status 200

  @addItemError
  Scenario Outline: Add a new inventory item
    Given path '/inventory/add'
    And request { id: <id>, name: <name>, image: <image>, price: <price> }
    When method post
    Then status <status>

    Examples:
      | id | name       | image          | price | status |
      | 10 | 'Hawaiian' | 'hawaiian.png' | '$12' | 400    |

  @addMissingFields
  Scenario: Add item with missing information
    Given path '/inventory/add'
    And request { name: 'NoIDPizza', image: 'noid.png', price: '$10' }
    When method post
    Then status 400
    And match response contains 'Not all requirements are met'

  @verifyProduct
  Scenario: Validate added product is present in inventory
    Given path '/inventory'
    When method get
    Then status 200
    * match response.data contains product
