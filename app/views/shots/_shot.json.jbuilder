json.extract! shot, :id, :title, :description, :user_id, :user_shot, :url, :created_at, :updated_at
json.url shot_url(shot, format: :json)
