source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.1'
gem 'sqlite3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen'
  gem 'annotate'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'etl', path: 'lib/etl'
gem 'bootstrap', '~> 4.0.0'
gem "bootstrap_form", "~> 4.0"
gem 'jquery-rails'
gem 'webdack-uuid_migration', git: 'https://github.com/aguynamedryan/webdack-uuid_migration', ref: '10b30a2494104acdf797b7d62a1cd00b5c3b1f17'
gem 'etl', path: File.join('./lib/etl')
