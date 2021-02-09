class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :home_team
      t.string :away_team
      t.integer :home_score
      t.integer :away_score
      t.date :date
      t.string :mom
      t.text :game_text
      t.string :rate_team

      t.timestamps
    end
  end
end
