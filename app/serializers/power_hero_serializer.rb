class PowerHeroSerializer < ActiveModel::Serializer
  attributes :id, :strength, :power_id, :hero_id
  belongs_to :hero, serializer: PowerHeroPowerSerializer
end
