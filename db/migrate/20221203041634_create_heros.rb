class CreateHeros < ActiveRecord::Migration[7.0]
  def change
    create_table :heros do |t|

      t.timestamps
    end
  end
end
