class Animalito < ActiveRecord::Base
  attr_accessible :name, :categoria_id, :born_on, :female, :problema_ids
  belongs_to :categoria
  has_many :sintomas
  has_many :problemas, :through => :sintomas
  validates_presence_of :name, :born_on
end
