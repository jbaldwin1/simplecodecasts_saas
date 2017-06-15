# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sengrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => EVN['SENDGRID_USERNAME'],
    :password => EVN['SENDGRID_USERNAME'],
    :domain => 'heroku.com',
    :enable_startstls_auto => true
}