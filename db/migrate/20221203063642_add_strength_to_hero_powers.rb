class AddStrengthToHeroPowers < ActiveRecord::Migration[7.0]
  def change
    add_column :hero_powers, :strength, :string
  end
end
