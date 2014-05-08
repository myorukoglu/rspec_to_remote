require 'capybara/rspec'
require 'rubygems'
require 'bundler/setup'

Capybara.default_driver = :selenium
###Capybara.app_host = 'https://www.directly.com/'
Capybara.app_host = 'http://192.168.15.214:8080/'
Capybara.run_server = false
