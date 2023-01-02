class Shop < ApplicationRecord
    has_many :shop_hours
    accepts_nested_attributes_for :shop_hours
end
