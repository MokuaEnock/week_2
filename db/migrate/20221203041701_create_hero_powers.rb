class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.belongs_to :hero
      t.belongs_to :power

      t.timestamps
    end
  end
end
