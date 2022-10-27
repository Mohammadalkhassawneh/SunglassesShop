class CreateFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :frames do |t|
      t.string :name
      t.text :description
      t.string :status
      t.integer :stock
      t.float :price
      t.string :currency
      t.references :user
      t.timestamps
    end
  end
end
