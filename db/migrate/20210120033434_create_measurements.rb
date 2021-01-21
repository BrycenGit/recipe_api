class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.string :unit
      t.decimal :amount, precision: 10, scale: 2
      t.belongs_to :ingredients
      t.belongs_to :recipes
      t.timestamps
    end
  end
end
