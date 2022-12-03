class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers do |t|

      t.timestamps
    end
  end
end
