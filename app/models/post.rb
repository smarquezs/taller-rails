class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id
  has_many :comment
  belongs_to :user

  #validates :titulo, presence: "el campo titulo no puede estar vacio"
  validates_presence_of :title
  #validates :title,
  # :presence => {
  #    :message => "El titulo no puede estar vacio"
  # },
  #  :length =>{
  #      :minimum => 3,
  #      :message => "El campo debe tener al menos 3 caractares"
  #  }

  # validates :title,
  #   presence: {
  #     message: "El campo no puede estar vacio"
  #   },
  #   length: {
  #     minimum: 3,
  #     message: "El campo debe tener al menos 3 caracteres"
  #   }


end
