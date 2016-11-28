@name = ""
@inputValue = ""

Given(/^I am in an interview$/) do
  # nothing to see here
end

Then(/^the value returned for (\d+) is (.*?)$/) do |inputNumber, expectedOutput|

  ##########################
  # TEST 1:
  # Return "Too small", "Just right" or "Too big" depending on the input number.
  outputValue = ""
  ##########################

  expect(outputValue).to eq(expectedOutput)
end

When(/^I enter the name "(.*?)"$/) do |inputName|
  @name = inputName # nothing to do here!
end

Then(/^the name I get back is "(.*?)"$/) do |expectedName|

  inputValue = @name

  ##########################
  # TEST 2:
  # Change the input value into upper-case and put it backwards.
  outputValue = ""
  ##########################

  expect(outputValue).to eq(expectedName)
end

When(/^I send (\d+) to my custom method$/) do |customMethodInput|
  inputValue = customMethodInput # nothing to do here!
end

Then(/^the number (\d+) is returned$/) do |expectedValue|
  # TEST 3:
  # DO NOT MODIFY THIS DEFINITION!
  # Instead, write a custom function 'myFunction' which satisfies the rules.
  outputValue = myFunction(@inputValue)
  expect(outputValue).to eq(expectedValue)
end

##########################
# TEST 3:
# Write your custom function here.

##########################

Then(/^this test prints (.*)$/) do |expectedValue|

  inputValue = @inputValue

  ##########################
  # TEST 4:
  # Return a countdown "10 9 8 7 6 5 4 3 2 1 LIFTOFF"
  outputValue = ""
  ##########################

  expect(outputValue).to eq(expectedValue)
end
