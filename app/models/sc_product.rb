class ScProduct < ApplicationRecord
  validates :name,
            presence: true
end
