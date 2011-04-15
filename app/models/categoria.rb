class Categoria < ActiveRecord::Base
  attr_accessible :nombre, :descripcion
  has_many :animalitos
  def to_s
    nombre
  end
end
