# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 5.2'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6.0.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.2', '>= 5.2.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use .env files
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
# Use Devise for authentication
gem 'devise', '~> 4.7', '>= 4.7.3', github: 'heartcombo/devise'
# Use ActiveRecord Sessions
gem 'activerecord-session_store', '~> 2.0', '>= 2.0.0'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

gem 'http', '~> 4.4'

gem 'http_accept_language', '~> 2.1'

gem 'httplog', '~> 1.4.3'

gem 'oj', '~> 3.11'

gem 'link_header', '~> 0.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 5.0.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.5'
  gem 'web-console', '>= 4.1.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'brakeman', '~> 5.0', require: false
  gem 'bundler-audit', '~> 0.8', require: false
  gem 'rubocop', '~> 1.12', require: false
  gem 'rubocop-rails', '~> 2.9', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'tailwindcss-rails', '~> 0.3.3'

gem 'capistrano', '~> 3.16'

gem 'capistrano-rails', '~> 1.4'

gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
