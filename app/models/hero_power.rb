class HeroPower < ApplicationRecord
  validates :strength, presence: true, iclusion: { in: %w[Strong Weak Average] }

  belongs_to :hero
  belongs_to :power
end
