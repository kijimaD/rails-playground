class ShopProduct < ApplicationRecord
  scope :available, -> { where(in_stock: true) }
  scope :cheap, -> { where(price: 0..1) }
  scope :cheaper_than, ->(price) { where("price < ?", price) }
end
