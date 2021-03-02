class AddQuantityToOrderLines < ActiveRecord::Migration[6.0]
  def change
    add_column :order_lines, :quantity, :integer, after: :price
  end
end
