class CreateSintomas < ActiveRecord::Migration
  def self.up
    create_table :sintomas do |t|
      t.integer :animalito_id
      t.integer :problema_id
      t.timestamps
    end
  end

  def self.down
    drop_table :sintomas
  end
end
