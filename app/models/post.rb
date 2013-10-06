class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comment

  #validates :title,
  # :presence => {
  #    :message => "El titulo no puede estar vacio"
  # },
  #  :length =>{
  #      :minimum => 3,
  #      :message => "El campo debe tener al menos 3 caractares"
  #  }

  validates :title,
    presence: {
      message: "El campo no puede estar vacio"
    },
    length: {
      minimum: 3,
      message: "El campo debe tener al menos 3 caracteres"
    }


end
