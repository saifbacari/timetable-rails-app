class AddJsonColumnToShopHours < ActiveRecord::Migration[7.0]
  def change
    add_column :shop_hours, :hours, :jsonb, null: false, default: '{}'

  end
end
