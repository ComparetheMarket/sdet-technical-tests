Given(/^I am on the vehicle details page$/) do
  visit("/")
  click_link('lph-cta-car')
end

When(/^I search for a numberplate of (.*?)$/) do |regNo|
  expect(page).to have_field("registration-number")
  fill_in "registration-number", with: regNo
  click_button("find-vehicle-by-reg")
end

Then(/^the vehicle make is '(.*?)'$/) do |vehicleMake|
  vehicleSummaryXpath = "//span[@class='vehicle-details']"
  expect(page).to have_xpath(vehicleSummaryXpath)
  fullSummary = find(:xpath, vehicleSummaryXpath).text

  ##########################
  # TEST 5: fullSummary is a comma-separated vehicle description. We only want the first part.

  ##########################

  expect(fullSummary).to eq(vehicleMake)
end