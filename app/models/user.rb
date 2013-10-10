class User < ActiveRecord::Base
  has_secure_password
  #has_many :post

  attr_accessible :email, :password, :password_confirmation
  # validates :password,
  #   presence: {
  #     on: :create,
  #     message: "password no puede ser blanco"
  #   }

  # validates :email,
  #   presence: {
  #     message: "email no puede ser vacio"
  #   },
  #   uniqueness: {
  #     message: 'El email ingresado ya existes'
  #   }

  #   validates :user,
  #   presence: {
  #     message: "El usuario no puede estar vacio"
  #   },
  #   uniqueness: {
  #     message: 'El nombre de usuario ya existe'
  #   }
end
