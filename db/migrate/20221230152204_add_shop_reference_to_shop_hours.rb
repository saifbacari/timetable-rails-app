class AddShopReferenceToShopHours < ActiveRecord::Migration[7.0]
  def change
    add_reference :shop_hours, :shop, foreign_key: true
  end
end
