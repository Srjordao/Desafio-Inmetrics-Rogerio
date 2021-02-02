require 'selenium-webdriver'
require 'rspec'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host =  "http://www.inmrobo.tk/accounts/login"
  config.default_max_wait_time = 15
end

