@lookup
Feature: Vehicle registration lookup
  In order to quickly identify my vehicle
  As an end-user
  I want to lookup my vehicle by its registration number

@test5
Scenario: Vehicle make returned from lookup
  Given I am on the vehicle details page
  When I search for a numberplate of AC08 ASU
  Then the vehicle make is '2008 Peugeot 207 Sport Cc (120)'

@test6
Scenario: Error message if invalid numberplate entered
  # Write a Given/When/Then
  # ...and then implement it!