source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1', '>= 6.1.5'

gem 'pg'

gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'breadcrumbs_on_rails'
gem 'bootstrap-sass'
gem 'bootstrap-select-rails'

gem 'slim-rails'
gem 'simple_form'
gem 'cocoon'

gem 'lightbox2-rails'

gem 'tinymce-rails'

# gem 'best_in_place'
gem 'gon'

gem 'kaminari'
gem 'bootstrap-kaminari-views'

gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

gem 'draper'
gem 'ransack'

gem 'devise'
gem 'authority'

gem 'state_machines-activerecord'

group :development, :test do
  gem 'rspec-rails'

  gem 'pry-rails'
  gem 'pry-theme'

  gem 'byebug', platforms: :mri
end

group :development do
  gem 'priscilla'

  gem "better_errors"
  gem "binding_of_caller"
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'

  gem 'capistrano'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano-scm-copy'
  gem 'capistrano3-puma'
end

group :test do
  gem 'shoulda-matchers', require: false

  gem 'timecop'
  gem 'factory_bot_rails'
  gem 'database_cleaner'

  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
