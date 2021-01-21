class Measurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.string :unit
      t.decimal :amount, precision: 10, scale: 2
      t.belongs_to :ingredient
      t.belongs_to :recipe
      t.timestamps
    end
  end
end
