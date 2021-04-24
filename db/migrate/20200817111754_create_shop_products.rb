class CreateShopProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_products do |t|
      t.string :name
      t.decimal :price, precision: 7, scale: 2
      t.integer :weight
      t.boolean :in_stock
      t.date :expiration_date

      t.timestamps
    end
  end
end
