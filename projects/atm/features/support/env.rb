# The file features/support/env.rb is always the very first file to be
# loaded when Cucumber starts a test run.
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')
require 'capybara/cucumber'
Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test
