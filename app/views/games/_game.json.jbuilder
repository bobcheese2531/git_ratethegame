json.extract! game, :id, :user_id, :home_team, :away_team, :home_score, :away_score, :date, :mom, :game_text, :rate_team, :created_at, :updated_at
json.url game_url(game, format: :json)
