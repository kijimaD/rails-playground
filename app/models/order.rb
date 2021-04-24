class Order < ApplicationRecord
  has_many :line_items
  has_many :product_online, through: :line_items
end
