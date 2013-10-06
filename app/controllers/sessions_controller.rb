#encoding: utf-8
class SessionsController < ApplicationController
  def new
  end

  def create

    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "EL usuario ha sido logeado correctamente!!"
      redirect_to root_url
    else
      flash[:error] = "Email o password incorrecta"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:warning] = "La sesión ha sido cerrada"
    redirect_to root_url
  end
end
