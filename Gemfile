source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}
gem "bcrypt", "3.1.12"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap"
gem "carrierwave", "1.2.2"
gem "ckeditor"
gem "closure_tree"
gem "coffee-rails", "~> 4.2"
gem "config", "~> 1.7", ">= 1.7.1"
gem "font-awesome-rails"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "mini_magick", "4.7.0"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.2"
gem "rails-i18n"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "mysql2", ">= 0.4.4", "< 0.6.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end

group :production do
  gem "pg"
  gem "rails_12factor"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
