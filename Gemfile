source 'https://rubygems.org'

def darwin_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ && require_as
end

def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ && require_as
end

gem 'rails', '4.0.0'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jbuilder', '~> 1.2'
gem 'thin'
gem 'validates_timeliness', '~> 3.0'

group :doc do
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'guard-rspec'
  gem 'libnotify', :require => linux_only('libnotify')
  gem 'rb-fsevent'
  gem 'database_cleaner', '1.0.1'
  gem 'coveralls', require: false
  gem 'quiet_assets'
end

