class CreateAnimalitos < ActiveRecord::Migration
  def self.up
    create_table :animalitos do |t|
      t.string :name
      t.integer :categoria_id
      t.date :born_on
      t.boolean :female
      t.timestamps
    end
  end

  def self.down
    drop_table :animalitos
  end
end
