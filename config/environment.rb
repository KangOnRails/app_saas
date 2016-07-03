# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => '587',
    :authentication => :plain,
    :username => ENV['D24Abraham@gmail.com'],
    :password => ENV['##NoHomo1687'],
    :domain => 'heroku.com',
    :enable_startstls_auto => true
}