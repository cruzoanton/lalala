# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.3"

gem "rails", "~> 6.1.3", ">= 6.1.3.2"

# gem rails standard
gem "jbuilder", "~> 2.7"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

# authentication
gem "devise", "~> 4.8"
gem "devise_invitable", "~> 2.0"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false
gem "dotenv-rails"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry"
  gem "standard"
end

group :development do
  gem "letter_opener"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "rspec-rails"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tailwindcss-rails", "~> 0.3.3"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
