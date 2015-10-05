require 'capybara/rspec'
require 'rubygems'
require 'bundler/setup'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://artwear.herokuapp.com/'
Capybara.run_server = false