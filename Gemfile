source "https://rubygems.org"

gem "rails", "~> 8.1.3", ">= 8.1.3.1"
# https://github.com/rails/rails/issues/58685
gem "json", "< 3"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft", "~> 1.3"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails", "~> 2.2"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 2.0"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.3"
# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails", "~> 4.6"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.15"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache", "~> 1.0"
gem "solid_queue", "~> 1.7"
gem "solid_cable", "~> 4.0"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.26", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", "~> 2.12", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", "~> 0.1", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Mission Control Jobs adds a dashboard to monitor and control background jobs
gem "mission_control-jobs", "~> 1.3"

# Track and store changes to models with Paper Trail
gem "paper_trail", "~> 17.0"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.11", platforms: %i[ mri windows ], require: "debug/prelude"

  # Audits gems for known security defects (use config/bundler-audit.yml to ignore issues)
  gem "bundler-audit", "~> 0.9", require: false

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", "~> 8.0", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", "~> 1.1", require: false

  # Use RSpec as the application testing framework
  gem "rspec-rails", "~> 8.0"
  # Use Factory Bot for test fixtures
  gem "factory_bot_rails", "~> 6.5"
  # Use Faker to generate test data
  gem "faker", "~> 3.8"

  # Use Database Consistency to keep the database and application constraints in sync
  gem "database_consistency", "~> 3.0", require: false

  # Use ERB Lint to lint .html.erb files
  gem "erb_lint", "~> 0.9", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "~> 4.3"

  # Use Foreman to run all necessary services while developing. See bin/dev and Procfile.dev files
  gem "foreman", "~> 0.90"

  # Send emails directly to the developer's browser with Letter Opener
  gem "letter_opener", "~> 1.10"
  gem "letter_opener_web", "~> 3.0"

  # Add a comment with the database schema to the top of relevant files
  gem "annotaterb", "~> 4.24"
end
