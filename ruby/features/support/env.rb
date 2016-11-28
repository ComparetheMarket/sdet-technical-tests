require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_wait_time = 5
Capybara.run_server = false
Capybara.app_host = 'https://www.comparethemarket.com/car-insurance'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium_chrome