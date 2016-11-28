@interview
Feature: Technical test
  In order to show off my Java skills
  As a tester
  I want to write some cool Java code

@test1
Scenario Outline: Conditional output
  Given I am in an interview
  Then the value returned for <input> is <output>

  Examples:
  | input | output     |
  | 1     | Too small  |
  | 49    | Too small  |
  | 50    | Just right |
  | 51    | Too big    |

@test2
Scenario: String manipulation
  Given I am in an interview
  When I enter the name "Compare the Market"
  Then the name I get back is "TEKRAM EHT ERAPMOC"

@test3
Scenario Outline: New method
  Given I am in an interview
  When I send <input> to my custom method
  Then the number <output> is returned

  Examples:
  | input | output  |
  | 6     | 17      |
  | 10    | 25      |
  | 40    | 85      |
  | 110   | 225     |
  | 903   | 1811    |

@test4
Scenario Outline: Countdown
  Given I am in an interview
  When I send <input> to my custom method
  Then this test prints <output>
  Examples:
  | input | output                       |
  | 10    | 10 9 8 7 6 5 4 3 2 1 LIFTOFF |
  | 5     | 5 4 3 2 1 LIFTOFF            |
  