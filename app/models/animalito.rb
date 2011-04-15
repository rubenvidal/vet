class Animalito < ActiveRecord::Base
  attr_accessible :name, :categoria_id, :born_on, :female
  belongs_to :categoria
end
