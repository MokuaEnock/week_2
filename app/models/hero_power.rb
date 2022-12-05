class HeroPower < ApplicationRecord
  validates :strength,
            inclusion: {
              in: %w[Strong Weak Average],
              message: "%{value} is not a valid size"
            }

  belongs_to :hero
  belongs_to :power
end
