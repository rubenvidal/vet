class Problema < ActiveRecord::Base
  attr_accessible :nombre
  has_many :sintomas
  has_many :animalitos, :through => :sintomas
  def to_s
    nombre
  end
end
