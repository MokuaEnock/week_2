class Power < ApplicationRecord
  has_many :hero_powers
  has_many :heros, through: :hero_powers
end
