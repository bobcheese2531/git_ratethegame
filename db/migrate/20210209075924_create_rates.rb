class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :position 
      t.string :name
      t.text :rate_text
      t.integer :rate

      t.timestamps
    end
  end
end
