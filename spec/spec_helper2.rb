require 'capybara/rspec'
require 'rubygems'
require 'bundler/setup'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.shopwell.com'
Capybara.run_server = false
