class CreateOrderLines < ActiveRecord::Migration[6.0]
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :menu_item_id
      t.integer :price

      t.timestamps
    end
  end
end
