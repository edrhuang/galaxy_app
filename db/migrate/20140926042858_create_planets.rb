class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :planet
      t.integer :diameter
      t.string :mythological_god

      t.timestamps
    end
  end
end
