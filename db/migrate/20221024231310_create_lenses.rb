class CreateLenses < ActiveRecord::Migration[6.1]
  def change
    create_table :lenses do |t|
      t.string :colour
      t.text :description
      t.string :prescription_type
      t.string :lens_type
      t.integer :stock
      t.float :price
      t.string :currency
      t.references :user
      t.timestamps
    end
  end
end
