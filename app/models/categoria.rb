class Categoria < ActiveRecord::Base
  attr_accessible :nombre, :descripcion
  has_many :animalitos
  validates_presence_of :nombre
  def to_s
    nombre
    #[nombre, descripcion].join(", ") #en este ejemplo concatenamos dos campos para mostrar en el combobox
  end
end
