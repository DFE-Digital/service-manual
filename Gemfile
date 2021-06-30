source 'https://rubygems.org'
git_source(:github) do |repo|
  "https://github.com/#{repo}.git"
end

ruby File.read('.ruby-version').chomp

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
gem 'rails-i18n', '~> 6.0.0'


gem 'govuk_publishing_components'

# redcarpet for processing markdown
gem 'redcarpet', '~> 3.5.1'

# contentful headless CMS
gem 'contentful', '~>2.15.2'

gem 'contentful_model', '~>1.3.0'

gem "rich_text_renderer"

# Gem for user activity auditing
gem 'paper_trail', '~> 10.3'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 4.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Manage multiple processes i.e. web server and webpack
gem 'foreman'

# Canonical meta tag
gem 'canonical-rails'

# Exception handling
gem 'sentry-raven', '~> 2.11'


# Feature flags
gem 'flipflop', '~> 2.6'
gem 'splitclient-rb', '~> 6.4'

# Hashdiff is a ruby library to compute the smallest difference between two hashes.
gem 'hashdiff', '~> 1.0'


# Logs formatter
gem 'rails_semantic_logger', '~> 4.4'


# Authorization gem
gem 'cancancan', '~> 3.0', '>= 3.0.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # Security scanner
  gem 'brakeman', '~> 4.5'

  # GOV.UK interpretation of rubocop for linting Ruby
  gem 'govuk-lint'

  gem 'rspec_junit_formatter', '~> 0.4.1'

  # Debugging
  gem 'pry-byebug'

  # Testing framework
  gem 'rspec-rails', '~> 4.0.0.beta3'

  # Handle env vars
  gem 'dotenv-rails', '~> 2.7.0'

  # Entity relationship diagrams
  gem 'rails-erd', '~> 1.6'

  # Test data
  gem 'factory_bot_rails', '~> 5.0'
  gem 'faker', '~> 2.8'

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.3'
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Ruby code analyzer and formatter
  gem 'rubocop', '~> 0.68'
  gem 'rubocop-rspec', '~> 1.32'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'

  gem 'database_cleaner', '~> 1.7'

  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.3'

  # Easy installation and use of browser drivers to run system tests with different browsers
  gem 'webdrivers', '~> 4.0'

  # Test coverage reporting
  gem 'simplecov', '~> 0.16', require: false

  # Web request caching for tests
  gem 'vcr', '~> 5.0', require: false
  gem 'webmock', '~> 3.6', require: false
end
