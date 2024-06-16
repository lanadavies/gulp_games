json.extract! game, :id, :name, :tournament_id, :two_player, :created_at, :updated_at
json.url game_url(game, format: :json)
