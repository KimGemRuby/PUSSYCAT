# Load the Rails application.
require_relative 'application'
require 'dotenv'
require 'dotenv-rails'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {

  :address => 'smtp.sendgrid.net',

  :port => '587',

  :authentication => :plain,

  :user_name => ENV['SENDGRID_USERNAME'],

  :password => ENV['SENDGRID_PASSWORD'],

  :domain => 'heroku.com',

  :enable_starttls_auto => true

}


ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'], # This is the string literal 'apikey', NOT the ID of your API key
  :password => ENV['SENDGRID_PASSWORD'], # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.smtp_settings =   {
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :domain             => 'gmail.com', #you can also use google.com
  :authentication     => :plain,
  :user_name          => ENV['GMAIL_LOGIN'],
  :password           => ENV['GMAIL_PWD']
}
