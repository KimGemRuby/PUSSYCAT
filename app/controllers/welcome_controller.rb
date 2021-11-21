class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @secret_key = ENV['SENDGRID_PASSWORD']
    @secret_key1 = ENV['SENDGRID_USERNAME']
  end
end
