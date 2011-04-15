class Sintoma < ActiveRecord::Base
  attr_accessible :animalito_id, :problema_id
  belongs_to :animalito
  belongs_to :problema
end
