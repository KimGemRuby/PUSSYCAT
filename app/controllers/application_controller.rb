class ApplicationController < ActionController::Base

  protect_from_forgery without: :exception
  before_action :authenticate_user!
end
