Postevent::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
#  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
#  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  
  # Application specific configuration
  config.email_contact = "noreply@gmail.com"
  config.organization = "postevent"
  config.timezone = "America/Chicago"
  config.timezone_offset = "-06"
  config.timezone_offset_dst = "-05"
  config.post_url = "http://localhost:3000"
  config.blog_url = "http://blog.postevent.com"
  config.calendar_url = "http://calendar.postevent.com"
  config.default_food_sponsor = "Our Sponsor"
  config.default_city = "Austin"
  config.default_state = "TX"
  config.default_country = "US"
  config.eventbrite_token = nil
  config.eventbrite_organizer_id = nil
  config.community_email = nil
  config.twitter_consumer_key = nil
  config.twitter_consumer_secret = nil
  config.twitter_oauth_token = nil
  config.twitter_oauth_token_secret = nil
  config.google_calendar_id = nil
  config.google_api_client_secret = nil
  config.google_api_client_id = nil
  config.google_api_refresh_token = nil
  config.google_api_access_token = nil
  config.wordpress_username = nil
  config.wordpress_password = nil
  config.wordpress_old_base_url = nil
  config.wordpress_base_url = nil # example http://www.example.com/api/
  config.wordpress_category = nil
  config.linkedin_consumer_key = nil
  config.linkedin_consumer_secret = nil
  config.linkedin_group_id = nil
end