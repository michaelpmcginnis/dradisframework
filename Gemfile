source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.9'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# ------------------------------------------------------ With native extensions
# These require native extensions.
# Ensure Traveling Ruby provides an appropriate version before bumping.
gem 'bcrypt', '3.1.9'
gem 'sqlite3', '1.3.9'
gem 'nokogiri', '1.6.5'

# --------------------------------------------------------- Dradis dependencies

# Dradis::Core, ::Frontend
gemspec path: 'engines/core'
gemspec path: 'engines/frontend'


# Dradis::Plugins manage the list of available / loaded external plugins
if Dir.exists?('../dradis-plugins') && !ENV['PACKAGING']
  gem 'dradis-plugins', path: '../dradis-plugins'
else
  gem 'dradis-plugins', github: 'dradis/dradis-plugins'
end

# Dradis::Plugins::Projects lets you backup and restore the repo state
if Dir.exists?('../dradis-projects') && !ENV['PACKAGING']
  gem 'dradis-projects', path: '../dradis-projects'
else
  gem 'dradis-projects', github: 'dradis/dradis-projects'
end

# Default theme: Snowcrash
if Dir.exists?('../dradis-theme_snowcrash') && !ENV['PACKAGING']
  gem 'dradis-theme_snowcrash', path: '../dradis-theme_snowcrash'
else
  gem 'dradis-theme_snowcrash', github: 'dradis/dradis-theme_snowcrash'
end


# In Production we need to be able to compile assets
# gem 'execjs'
# gem 'therubyracer'

# ------------------------------------------------------------------ Asset gems


# ------------------------------------------------------------------ Other gems

# The Node collection acts as a tree
gem 'acts_as_tree', '~> 1.6'

# Manipulate XML
gem 'builder'

# Security
gem 'ruby-nmap'

# Command line interface
gem 'thor', '~> 0.19.1'


# ------------------------------------------------------------------ Test & Dev
group :development do
  gem 'rspec-rails'
  gem 'spring'
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'
  # Use CoffeeScript for .js.coffee assets and views
  gem 'coffee-rails', '~> 4.0.0'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer',  platforms: :ruby
end unless ENV['PACKAGING']

group :test do
  gem 'database_cleaner'
  gem 'factory_girl', '~> 2.6.4'
  gem 'capybara'
  gem 'guard-rspec'
end unless ENV['PACKAGING']



# =================================================== Other plugins and engines
# = ~  Do not edit this file!! ~ ==============================================
# =============================================================================
#
# See Gemfile.plugins to edit the list of plugins and tool connectors that will
# be loaded by the framework.
#
# Plugins in Gemfile.plugins will be loaded automatically, that's where your
# own plugins should be listed.
#

plugins_file = 'Gemfile.plugins'
if File.exists?(plugins_file)
  eval(IO.read(plugins_file), binding)
end
