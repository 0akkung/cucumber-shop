Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Sausage" with price 39.00 and stock of 20 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    And there should be "Bread" with stock of 3 left

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Sausage" with quantity 5
    Then total should be 316.00
    And there should be "Bread" with stock of 3 left
    And there should be "Jam" with stock of 9 left
    And there should be "Sausage" with stock of 15 left
