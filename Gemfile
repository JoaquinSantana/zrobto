source 'https://rubygems.org'

ruby '2.1.1'

gem 'airbrake'
gem 'coffee-rails'
gem 'delayed_job_active_record'
gem 'email_validator'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '~> 4.1.0'
gem 'recipient_interceptor'
gem 'simple_form', '~> 3.1.0.rc1', github: 'plataformatec/simple_form'
gem 'title'
gem 'uglifier'
gem 'unicorn'
gem 'sass-rails', '~> 4.0.2'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'sprockets', '2.11.0'
gem 'devise'
gem "font-awesome-rails"

group :development do
  gem 'foreman'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails', '>= 2.14'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.7.3'
end
