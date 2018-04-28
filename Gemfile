source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'mysql2', '>= 0.3.18', '< 0.6.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Custom Defined gems
gem "font-awesome-rails"
gem 'devise'
gem 'devise-bootstrapped'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'
gem 'thin'
gem 'activeadmin'
gem 'active_skin'
gem 'active_admin_theme'
gem 'activeadmin_addons'
gem 'simple_form'
gem "paperclip"
gem 'aws-sdk', '~>3'
gem 'date_validator'
gem 'ratyrate'

gem 'rails_12factor', group: :production
gem 'pg', '~> 0.21.0', group: :production
gem 'heroku-deflater', group: :production

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
