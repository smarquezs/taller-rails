#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def authenticate_user!
    if current_user.nil?
      flash[:error] = "Para usar esta aplicación debe logearse"
      redirect_to sign_in_path
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
