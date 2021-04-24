class CreateOrder1s < ActiveRecord::Migration[6.0]
  def change
    create_table :order1s do |t|
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
