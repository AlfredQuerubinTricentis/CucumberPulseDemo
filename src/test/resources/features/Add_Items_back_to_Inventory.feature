Feature:Add Items back to Inventory
  As a store owner,
  I want to add items back to inventory when they are returned or exchanged,
  so that I can track inventory.


Scenario: Items returned for refund should be added to inventory.
    Given that a customer previously bought a black sweater from me
    And I have three black sweaters in inventory
    And I have two green sweaters
    When they return the black sweater for a refund
    Then I should have four black sweaters in inventory

Scenario: Exchanged items should be returned to inventory.
    Given that a customer previously bought a blue garment from me
    And I have two blue garments in inventory
    And three black garments in inventory
    When they exchange the blue garment for a black garment
    Then I should have three blue garments in inventory
    And two black garments in inventory