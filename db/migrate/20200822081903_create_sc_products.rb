class CreateScProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :sc_products do |t|
      t.string :name
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
