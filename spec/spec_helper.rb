require 'capybara/rspec'
require 'rubygems'
require 'bundler/setup'

Capybara.default_driver = :selenium
Capybara.app_host = 'https://stage.mdlive.com/'
Capybara.run_server = false
