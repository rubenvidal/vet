class CreateProblemas < ActiveRecord::Migration
  def self.up
    create_table :problemas do |t|
      t.string :nombre
      t.timestamps
    end
  end

  def self.down
    drop_table :problemas
  end
end
