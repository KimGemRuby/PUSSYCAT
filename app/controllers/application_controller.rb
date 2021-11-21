class ApplicationController < ActionController::Base

  protect_from_forgery without: :exception
  before_action :authenticate_user!


  def secret_key
    @key = ENV['SENDGRID_PWD']
  end

end
