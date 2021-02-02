require 'rspec'
require 'httparty'
require 'capybara/cucumber'
require "httparty/request"
require "httparty/response/headers"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
