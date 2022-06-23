source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in discovery.gemspec.
# gemspec

gem "pg", "~> 1.1"

gem "sprockets-rails"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-byebug'
end


# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
