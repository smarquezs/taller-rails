class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation
  validates :password,
    presence: {
      on: :create,
      message: "password no puede ser blanco"
    }

  validates :email,
    presence: {
      message: "email no puede ser vacio"
    },
    uniqueness: {
      message: 'El email ingresado ya existes'
    }
end
