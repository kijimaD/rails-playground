class CreateIproducts < ActiveRecord::Migration[6.0]
  def change
    create_table :iproducts do |t|
      t.string :name

      t.timestamps
    end
    add_index :iproducts, :name
  end
end
