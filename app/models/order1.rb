class Order1 < ApplicationRecord
  after_initialize :set_defaults

  private

  def set_defaults
    self.quantity ||= 1
  end

end
