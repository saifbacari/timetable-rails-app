class CreateShopHours < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_hours do |t|

      t.timestamps
    end
  end
end
