class Vproduct < ApplicationRecord
  validates :name,
            presence: true,
            length: { in: 2..20 },
            uniqueness: true
  validates :price,
            presence: true
  validates :in_stock,
            inclusion: { in: [true, false],
                         message: 'This one is not allowed' }
end
