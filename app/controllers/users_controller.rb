class UsersController < ApplicationController
  before_filter :authenticate_user!
  def new
    @usuario = User.new
  end

  def create
    @usuario = User.new(params[:user])

    if @usuario.save
      flash[:success] = "Usuario ha sido creado correctamente"
      redirect_to root_url
    else
      flash[:error] = "Error al crear el usuario"
      render :new
    end
  end
end
