class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private
  def currente_user
    @currente_user ||= User.find(session[:uder_id]) if session[:user_id]
  end
end
