class ShopHour < ApplicationRecord
    belongs_to :shop
    store_accessor :shop_hour, :sunday_opens_at, :sunday_closes_at


end
