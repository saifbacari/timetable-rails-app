class Shop < ApplicationRecord
    has_many :shop_hours, dependent: :destroy
    accepts_nested_attributes_for :shop_hours
end
