class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  skip_before_filter :verify_authenticity_token

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
end
