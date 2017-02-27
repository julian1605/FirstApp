class ChangeDecimalFormatInOrders < ActiveRecord::Migration[5.0]
  def up
    change_column :orders, :total, :decimal, precision: 12, scale: 3
  end

  def down
    change_column :orders, :total, :decimal
  end
end
