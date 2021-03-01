source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 5.2'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.2'
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
# Use Omniauth for external authentication
gem 'omniauth', '~> 2.0', '>= 2.0.3', github: 'omniauth/omniauth'
# Use Omniauth Github plugin
gem 'omniauth-github', '~> 2.0'
# Use Omniauth Google plugin
gem 'omniauth-google-oauth2', '~> 0.8.1'
# Use Omniauth Twitter plugin
gem 'omniauth-twitter', '~> 1.4'
# Use ActiveRecord Sessions
gem 'activerecord-session_store', '~> 1.1', '>= 1.1.3'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "tailwindcss-rails", "~> 0.3.3"

gem 'capistrano', '~> 3.16'

gem 'capistrano-rails', '~> 1.4'

gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
